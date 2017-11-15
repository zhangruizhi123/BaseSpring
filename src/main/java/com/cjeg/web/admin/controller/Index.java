package com.cjeg.web.admin.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cjeg.Util.database.Database;
import com.cjeg.core.annotation.Authority;
import com.cjeg.web.admin.model.PPP;

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
	
	@Autowired
	private Test abc;
	private Logger logger=Logger.getLogger(Index.class);
	//将根目录重定向到index页面
	@RequestMapping("/")
	public String init(){
		return "redirect:/index";
	}
	
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("people")
	public String people(){
		return "people";
	}
	
	
	@Authority(Authority.SUPADMIN)
	@RequestMapping(value="/test"/*,method=RequestMethod.POST*/)
	@ResponseBody
	public String test(String name,int age){
		logger.debug("hello word");
		return name+":"+age;
	}
	
	@RequestMapping(value="/upload")
	@ResponseBody
	public String upload(@RequestParam("file")MultipartFile file ,PPP p) throws Exception{
		String sname=file.getOriginalFilename();
		File files=new File("C:\\Users\\admin\\Desktop\\eeef\\"+sname);
		file.transferTo(files);
		System.out.println(sname);
		System.out.println(p);
		return "success";
	}
	
	@RequestMapping("/tables")
	//@ResponseBody
	public String listTable(HttpSession session){
		System.out.println(abc);
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
	
	@RequestMapping("/tianqi")
	@ResponseBody
	public Weather tianqi(){
		System.out.println("查询天气");
		Weather w=new Weather();
		w.setName("zhangsan");
		w.setAddress("wuhan");
		w.setAge(33);
		return w;
	}
	
	class Weather{
		String name;
		int age;
		String address;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		
	}
}
