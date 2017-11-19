package com.cjeg.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjeg.Util.StringUtils;
import com.cjeg.web.admin.mapper.SysUserMapper;
import com.cjeg.web.admin.model.SysUser;
import com.cjeg.web.admin.model.SysUserExample;

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
}
