<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="ctx" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="_mate.jsp"></jsp:include>
<link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon" />
<title>登录页面1</title>
</head>
<body>
<div class="container">
			<div class="modal show in">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<span class="modal-title center-block">
								<i class="glyphicon glyphicon-modal-window"></i>
								登录
								<div style="display:inline-block; text-align:center;width:80%;color:#f00" class="error"></div>
							</span>
						</div>
						<div class="modal-body">
						<form id="form" action="${ctx}/login" method="post">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12">
									<div class="form-group">
										<div class="input-group input-group-lg">
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-user"></i>
											</span>
											<input class="form-control" id="user" name="user" type="text" placeholder="请输入用户名"/>
										</div>
										<br />
										<div class="input-group input-group-lg">
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-pawn"></i>
											</span>
											<input class="form-control" id="password" name="password" type="password" placeholder="请输入密码"/>
										</div>
										<br />
										<div class="input-group input-group-lg">
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-adjust"></i>
											</span>
											<input class="form-control" id="code" name="code" type="text" placeholder="请输入图像验证码"/>
											<span class="input-group-addon img" style="padding:0px" >
												<img id="imgs" src="user/image/code" style="height:45px;"/>
											</span>
										</div>
									</div>
								</div>
							</div>
							</form>
						</div>
						<div class="modal-footer">
							<div class="btn-group">
								<button class="btn btn-danger">
									<i class="glyphicon glyphicon-log-out"></i>
									取消</button>
								<button type="submit" class="btn btn-success login">
									<i class="glyphicon glyphicon-log-in"></i>
									登录</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
$(function(){
	alert("");
	$(".img").click(function(){
		$("#imgs")[0].src="${ctx}/user/image/code?"+Math.random();
	});
	$(".login").click(function(){
		var user=$("#user").val();
		var password=$("#password").val();
		var code = $("#code").val();
		if(user==""){
			$(".error").html("用户名不能为空");
		}else if(password==""){
			$(".error").html("密码不能为空");
		}else if(code==""){
			$(".error").html("图像验证码不能为空");
		}
		alert($("#form").serialize());
	});
});
</script>
</html>