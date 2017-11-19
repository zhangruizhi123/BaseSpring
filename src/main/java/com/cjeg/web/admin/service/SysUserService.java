package com.cjeg.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjeg.Util.StringUtils;
import com.cjeg.web.admin.mapper.SysUserMapper;
import com.cjeg.web.admin.model.SysUser;
import com.cjeg.web.admin.model.SysUserExample;
import com.cjeg.web.commen.message.Response;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysUserService {
	@Autowired
	private SysUserMapper sysUserMapper;
	
	public SysUser login(String user,String password){
		SysUserExample sysUserExample=new SysUserExample();
		sysUserExample.createCriteria()
		.andNickNameEqualTo(user)
		.andPasswordEqualTo(StringUtils.getMD5(password));
		List<SysUser> list=sysUserMapper.selectByExample(sysUserExample);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
	public Response<List<SysUser>> listUser(){
		Response<List<SysUser>> response=new Response<List<SysUser>>();
		PageHelper.startPage(1, 2);
		List<SysUser> list=sysUserMapper.selectByExample(new SysUserExample());
		PageInfo<SysUser> pageInfo=new PageInfo<SysUser>(list);
		response.setFlag(0);
		response.setObj(list);
		response.setMsg("查询成功");
		response.setTotal(pageInfo.getTotal());
		return response;
	}
}
