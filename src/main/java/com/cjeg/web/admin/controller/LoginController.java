package com.cjeg.web.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cjeg.web.admin.model.SysUser;
import com.cjeg.web.admin.service.SysUserService;
import com.cjeg.web.consts.Consts;

@Controller
@RequestMapping
public class LoginController{
	@Autowired
	private SysUserService sysUserService;
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request,String user,String password,String code){
		HttpSession session=request.getSession();
		String codes=(String) session.getAttribute(Consts.IMAGE_SESSION);
		System.out.println("图像验证码:"+codes);
		System.out.println("code:"+code);
		if(user==null&&password==null&&code==null){
			//第一次打开页面
			return "login";
		}
		System.out.println("name:"+user);
		if(codes==null||code==null||!code.toLowerCase().equals(codes)){
			session.setAttribute("logerror", "图像验证码不合法!");
			return "login";
		}else if(user==null){
			session.setAttribute("logerror", "用户名不能为空!");
			return "login";
		}else if(password==null){
			session.setAttribute("logerror", "密码不能为空!");
			return "login";
		}
		try{
			SysUser users=sysUserService.login(user, password);
			if(users==null){
				session.setAttribute("logerror", "密码错误");
				return "login";
			}
			session.setAttribute(Consts.ADMIN_SESSION, users);
			return "redirect:/index.html";
		}catch(Exception e){
			session.setAttribute("logerror", "系统故障!");
			return "login";
		}
	}
}
