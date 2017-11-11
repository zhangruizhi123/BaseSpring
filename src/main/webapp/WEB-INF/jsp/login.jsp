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
<title>登录页面</title>
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
							</span>
						</div>
						<div class="modal-body">
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
						</div>
						<div class="modal-footer">
							<div class="btn-group">
								<button class="btn btn-danger">
									<i class="glyphicon glyphicon-log-out"></i>
									取消</button>
								<button class="btn btn-success">
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
	$(".img").click(function(){
		$("#imgs")[0].src="${ctx}/user/image/code?"+Math.random();
	});
});
</script>
</html>