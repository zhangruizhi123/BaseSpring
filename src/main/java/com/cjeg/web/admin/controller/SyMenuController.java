package com.cjeg.web.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjeg.web.admin.model.Sysmenu;
import com.cjeg.web.admin.service.SysMenuService;
import com.cjeg.web.commen.message.Response;
/**
 * 菜单管理
 * @author admin
 *
 */
@Controller
@RequestMapping("/sysmenu")
public class SyMenuController {
	
	@Autowired
	private SysMenuService sysMenuService;
	
	@RequestMapping("/list")
	@ResponseBody
	public Response<List<Sysmenu>> listMenus(HttpServletRequest request){
		Response<List<Sysmenu>> result=new Response<List<Sysmenu>>();
		try{
			result.setObj(sysMenuService.listAll());
		}catch(Exception e){
			result.setFlag(1);
			result.setMsg(e.getMessage());
		}
		return result;
	}
}
