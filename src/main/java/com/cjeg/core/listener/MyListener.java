package com.cjeg.core.listener;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.cjeg.Util.TaskUtils;
import com.cjeg.web.admin.model.People;

public class MyListener implements ServletContextListener, Runnable
{
	private static final long DELAY=10;
	private static ScheduledExecutorService schedule=Executors.newScheduledThreadPool(1);
	private SqlSession session=null;
	
	private String startTime="06:00:00";
	
	private static DateFormat dateFormat = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
	private static DateFormat dayFormat = new SimpleDateFormat("yy-MM-dd");
	@Override
	public void contextDestroyed(ServletContextEvent arg0)
	{
		if(session!=null)
		{
			session.close();
		}
	}

	@Override
	public void contextInitialized(ServletContextEvent contextEvent)
	{
		long oneDay = 24 * 60 * 60 * 1000;  
		//定义每天早上6点启动一次任务
        long initDelay  = getTimeMillis(startTime) - System.currentTimeMillis();  
        initDelay = initDelay > 0 ? initDelay : oneDay + initDelay;
		schedule.scheduleAtFixedRate(this, initDelay, oneDay, TimeUnit.MILLISECONDS);
		WebApplicationContext webContent=WebApplicationContextUtils.getWebApplicationContext(contextEvent.getServletContext());
		if(webContent!=null)
		{
			SqlSessionFactory factory=(SqlSessionFactory)webContent.getBean("sqlSessionFactory");
			if(factory!=null)
			{
				session = factory.openSession();
			}
	
		}
		
	}
	
	//这里编写需要添加的操作
		public synchronized void run()
		{
			
			Calendar cal=Calendar.getInstance();
			String time=cal.get(Calendar.YEAR)+"/"+cal.get(Calendar.MONTH)+"/"+cal.get(Calendar.DAY_OF_MONTH)+"\t"+cal.get(Calendar.HOUR_OF_DAY)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND);
			try
			{
				if(session!=null)
				{
					//后台操作数据库例子
					//对数据开始爬取
					boolean isrun=true;
					String url="http://www.shanghaiwater.gov.cn/shwaterweb/gb/sswj/n206/n235/n258/index";
					String tempUrl;
					int index=0;
					while(isrun){
						//遍历所有的页面
						if(index==0){
							tempUrl=url+".html";
						}else{
							tempUrl=url+index+".html";
						}
						index++;
						//防止出现无限循环
						try{
							List<People>list=TaskUtils.spider(tempUrl);
							//404错误导致
							if(list==null){
								isrun=false;
							}else{
							}
						}catch(Exception e){
							isrun=false;
						}
					}
					session.commit();
					System.out.println("[-----一次任务结束----]");
				}
				
			}
			catch(Exception e)
			{
				System.out.println("[本次任务失败]  "+time);
			}
		}

 private static long getTimeMillis(String time) {        
        try {
            Date currentDate = dateFormat.parse(dayFormat.format(new Date()) + " " +time);
            return currentDate.getTime() ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
 

}
