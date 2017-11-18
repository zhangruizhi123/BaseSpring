package com.cjeg.web.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjeg.web.admin.mapper.SysmenuMapper;
import com.cjeg.web.admin.model.Sysmenu;
import com.cjeg.web.admin.model.SysmenuExample;

@Service
public class SysMenuService {
	@Autowired
	private SysmenuMapper sysmenuMapper;
	
	public List<Sysmenu> listAll(){
		//菜单只查询两级
		List<Sysmenu> menuList=new ArrayList<Sysmenu>();
		SysmenuExample sysmenuExample=new SysmenuExample();
		sysmenuExample.setOrderByClause("orders");
		List<Sysmenu> list=sysmenuMapper.selectByExample(sysmenuExample);
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
