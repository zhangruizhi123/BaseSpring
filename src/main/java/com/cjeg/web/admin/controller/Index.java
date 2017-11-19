package com.cjeg.web.admin.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cjeg.Util.database.Database;
import com.cjeg.core.annotation.Authority;

/**
 * 
 * @author 张瑞志
 *
 * 创建时间:2017年8月23日 下午3:27:28
 * 登录主页的请求
 */
@Controller
@RequestMapping("")
public class Index {
	
	private Logger logger=Logger.getLogger(Index.class);
	//将根目录重定向到index页面
	@RequestMapping("/")
	public String init(){
		return "login.html";
	}
	
	@Authority(Authority.ADMIN)
	@RequestMapping(value="/{path}",method=RequestMethod.GET)
	public String page(@PathVariable("path") String path){
		//当需要建立目录时用.隔开
		path=path.replaceAll("\\.", "/");
		return path;
	}
	
	@RequestMapping(value="/upload")
	@ResponseBody
	public String upload(@RequestParam("file")MultipartFile file ) throws Exception{
		String sname=file.getOriginalFilename();
		File files=new File("C:\\Users\\admin\\Desktop\\eeef\\"+sname);
		file.transferTo(files);
		System.out.println(sname);
		return "success";
	}
	
	@RequestMapping("/tables")
	//@ResponseBody
	public String listTable(HttpSession session){
		Database database=new Database();
		database.setHost("localhost");
		database.setPort(3306);
		database.setName("test");
		database.setUserName("root");
		database.setPassword("root");
		try {
			database.excute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("tables", database.getTable());
		return "tables";
	}
	
}
