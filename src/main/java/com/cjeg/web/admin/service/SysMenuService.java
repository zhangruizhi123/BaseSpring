package com.cjeg.web.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjeg.web.admin.mapper.SysmenuMapper;
import com.cjeg.web.admin.mapper.UserMenuMapper;
import com.cjeg.web.admin.model.SysUser;
import com.cjeg.web.admin.model.Sysmenu;
import com.cjeg.web.admin.model.SysmenuExample;
import com.cjeg.web.admin.model.UserMenu;
import com.cjeg.web.admin.model.UserMenuExample;
import com.cjeg.web.consts.Consts;

@Service
public class SysMenuService {
	@Autowired
	private SysmenuMapper sysmenuMapper;
	
	@Autowired
	private UserMenuMapper userMenuMapper;
	
	public List<Sysmenu> listAll(HttpServletRequest request){
		SysUser users = (SysUser) request.getSession().getAttribute(Consts.ADMIN_SESSION);
		//菜单只查询两级
		List<Sysmenu> menuList=new ArrayList<Sysmenu>();
		SysmenuExample sysmenuExample=new SysmenuExample();
		sysmenuExample.setOrderByClause("orders");
		List<Sysmenu> list=new ArrayList<Sysmenu>();
		if(users!=null){
			Integer id=users.getId();
			UserMenuExample userMenuExample =new UserMenuExample();
			//去除重复数据
			userMenuExample.setDistinct(true);
			userMenuExample.createCriteria().andUserIdEqualTo(id);
			List<UserMenu> listMenu=userMenuMapper.selectByExample(userMenuExample);
			if(listMenu!=null&&listMenu.size()>0){
				for(UserMenu um:listMenu){
					Sysmenu menu=new Sysmenu(um);
					list.add(menu);
				}
			}
		}
		//List<Sysmenu> list=sysmenuMapper.selectByExample(sysmenuExample);
		Map<String,Sysmenu> pmenu=new HashMap<String,Sysmenu>();
		for(Sysmenu menu:list){
			//说明是一级菜单
			if(menu.getPid()==0){
				menuList.add(menu);
				pmenu.put(""+menu.getId(), menu);
			}
		}
		//遍历下级菜单
		for(Sysmenu menu:list){
			if(menu.getPid()!=0){
				Sysmenu m=pmenu.get(""+menu.getPid());
				if(m!=null){
					m.addChild(menu);
				}
			}
		}
		return menuList;
	}
}
