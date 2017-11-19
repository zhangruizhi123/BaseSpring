package com.cjeg.core.interceptor;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.cjeg.core.annotation.Authority;
import com.cjeg.web.consts.Consts;

/**
 * 控制后台登录权限问题
 * @author 张瑞志
 *
 * 创建时间:2017年2月23日 下午9:52:43
 *
 */
public class MyAuthorInterceptor implements HandlerInterceptor{
	
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object arg2) throws Exception {
		//获取方法
		HttpSession sesssion=request.getSession();
		HandlerMethod method=(HandlerMethod)arg2;
		String url=request.getRequestURI();
		url=url.replaceAll(request.getContextPath(), "");
		Method md=method.getMethod();
		Authority auth=md.getAnnotation(Authority.class);
		if(auth!=null){
			int value=auth.value();
			if(value==Authority.ADMIN){
				//当该用户的session为空时,直接跳转到登录页面
				if(sesssion.getAttribute(Consts.ADMIN_SESSION)==null){
					System.out.println("无权限访问");
					response.sendRedirect(request.getContextPath() + "/login.html"); 
				}
			}/*else if(value==Authority.SUPADMIN){
				System.out.println("超级管理员");
			}else if(value==Authority.USER){
				System.out.println("普通用户");
			}*/else{
				System.out.println("所有权限");
			}
		}
		
		//response.sendRedirect(request.getContextPath() + "/index"); 
		return true;
	}
}
