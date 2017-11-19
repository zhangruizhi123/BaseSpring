package com.cjeg.web.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjeg.web.admin.mapper.SysUserMapper;
import com.cjeg.web.admin.model.SysUser;
import com.cjeg.web.admin.service.SysUserService;
import com.cjeg.web.commen.message.Response;

@Controller
@RequestMapping("sysUser")
public class SysUserController {
	
	@Autowired
	private SysUserService sysUserService;
	
	@RequestMapping("listUser")
	@ResponseBody
	public Response<List<SysUser>> listUser(){
		Response<List<SysUser>> resopnse=new Response<List<SysUser>>();
		try{
			resopnse=sysUserService.listUser();
		}catch(Exception e){
			resopnse.setFlag(1);
			resopnse.setMsg("查询数据失败");
		}
		return resopnse;
	}
}
