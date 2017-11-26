<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="_mate.jsp"></jsp:include>
<link rel="icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="${ctx}/static/css/navmenu.css">
<title>登录页面</title>

<style type="text/css">
#bodyFrame{
	border:0px;
	border-top:1px solid #ddd;
}
</style>
</head>
<body>
	<div class="container">
		<div>
			<div class="row" style="margin-top:5px;">
				<div class="col-md-10">
					<h2>标题</h2>
				</div>
				<div class="col-md-2">
					<c:if test="${not empty admin_session}">
						<button type="button" class="btn btn-default">欢迎：${admin_session.name} 进入</button>
					</c:if>
				</div>
			</div>
		</div>
		<div class="row body">
			<div class="col-md-2 col-sm-2 hidden-xs" id="myScrollspy">
				<ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
					<li class="active">
						<a href="#"><i class="glyphicon glyphicon-th-large"></i> 首页</a>
					</li>
					<li>
						<a href="#systemSetting" class="nav-header collapsed"
						data-toggle="collapse"><i class="glyphicon glyphicon-cog"></i>系统管理 <span class="pull-right glyphicon glyphicon-chevron-down"></span></a>
						<ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li><a href="#"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-th-list"></i>菜单管理</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>角色管理</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
						</ul>
						</li>
					<li><a href="#"> <i class="glyphicon glyphicon-credit-card"></i> 物料管理
					</a></li>
					<li><a href="#"> <i
							class="glyphicon glyphicon-globe"></i> 分发配置 <span
							class="label label-warning pull-right">5</span>
					</a></li>
					<li><a href="#"> <i
							class="glyphicon glyphicon-calendar"></i> 图表统计
					</a></li>
					<li><a href="#"> <i class="glyphicon glyphicon-fire"></i>
							关于系统
					</a></li>
				</ul>
			</div>
			<div class="col-md-10 col-sm-10 col-xs-12 cans">
				<!--这里加载内容-->
				<div>
					<ul class="mnav">
						<li>首页<span class="close" data-dismiss="true">&times;</span>
					<!-- 
						</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						 -->
					</ul>
				</div>
				<iframe src="" id="bodyFrame" ></iframe>
			</div>
		</div>
		<div class="row text-center end">
			<span> Copyright © 2013-2017</span>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		//设置页面高度
		$(".container").height($(document).height());
		$(".body").height($(document).height() - (65 + $(".end").height()));
	});
	$(function(){
		$("#bodyFrame").width($(".cans").width());
		$(window).resize(function(){
			//设置iframe的宽度
			$("#bodyFrame").width($(".cans").width());
		});
		$.ajax({
			url:'${ctx}/sysmenu/list.do',
			type:'post',
			dataType:'json',
			success:function(json){
				var menu='<li class="active"><a href="#"><i class="glyphicon glyphicon-th-large"></i> 首页</a></li>';
				if(json.flag==0){
					var list=json.obj;
					if(list.length>0){
						for(var i=0;i<list.length;i++){
							var item=list[i];
							if(item.childs.length>0){
								menu+='<li>'
										+'<a href="#systemSetting'+item.id+'" class="nav-header collapsed" data-toggle="collapse">'
										+'<i class="'+item.icon+'"></i>'+item.name+' <span class="pull-right glyphicon glyphicon-chevron-down"></span></a>'
										+'<ul id="systemSetting'+item.id+'" class="nav nav-list collapse secondmenu" style="height: 0px;">';
								//两级菜单
								for(var j=0;j<item.childs.length;j++){
									var child=item.childs[j];
									menu+='<li><a href="'+child.url+'"><i class="'+child.icon+'"></i>'+child.name+'</a></li>';
								}
								menu+='</ul></li>';
							}else{
								//只有一级菜单
								menu+='<li><a href="'+item.url+'"> <i class="'+item.icon+'"></i>'+item.name+'</a></li>';
							}
						}
					}
					
				}else{
					alert(json.msg);
				}
				
				$("#main-nav").html(menu);
				$("#main-nav").find("a").click(function(){
					var next=$(this).parent().find("ul")[0];
					if(!next){
						var href=$(this).attr("href");
						if(href!="#"&&href!=""){
							//这里对菜单点击事件进行处理
							$("#bodyFrame")[0].src=href;
							$("#bodyFrame").height(0);
							addTab($(this).text(),href);
							return false;
						}
					}
				});
			}
		});
	});
	
	//添加到tables中
	function addTab(title,url){
		var lis=$("ul.mnav").find("li");
		for(var i=0;i<lis.length;i++){
			var temp=$(lis[i]).text();
			if((title+"×")==temp){
				$(lis[i]).addClass("tabaction").siblings().removeClass("tabaction");
				return;
			}
		}
		//先移除样式
		$("ul.mnav").find("li").removeClass("tabaction");
		var $li=$('<li class="tabaction" url="'+url+'" title="'+title+'">'+title+'<span class="close" data-dismiss="true">&times;</span></li>');
		$("ul.mnav").append($li);
		//点击切换
		$li.click(function(){
			$(this).addClass("tabaction").siblings().removeClass("tabaction");
			var url=$(this).attr("url");
			$("#bodyFrame")[0].src=url;
			$("#bodyFrame").height(0);
		});
		//点击关闭
		$li.find("span").click(function(event){
			//删除标签
			var parent2=$(this).parent().parent();
			$(this).parent().remove();
			
			var list=parent2.find("li");
			var size=list.length;
			if(size>0){
				var temp=$(list[size-1]);
				temp.addClass("tabaction").siblings().removeClass("tabaction");
				$("#bodyFrame")[0].src=temp.attr("url");
				$("#bodyFrame").height(0);
			}
			//阻止冒泡事件
			event.stopPropagation();
		});
	}
</script>
</html>