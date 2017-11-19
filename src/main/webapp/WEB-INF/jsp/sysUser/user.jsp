<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../_mate.jsp"></jsp:include>
<title>登录页面</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<div class="panel-title">用户管理</div>
					</div>
					<div class="panel-body">
						<div class="tables"></div>
					</div>
					<div class="panel-footer">
						<div class="btn-group">
							<button class="btn btn-success">1</button>
							<button class="btn">2</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		resizeHeigt();
		$(".tables").table({
			title:'用户管理',
			url:'${ctx}/sysUser/listUser.json',
			column:[
				{field:'id',name:'主键',visible:'hide',align:'center'},  
				{field:'name',name:'名称'},
				{field:'nickName',name:'登录名'},
				{field:'createTime',name:'创建日期',align:'center'},
			]
		});
		resizeHeigt();
	});
</script>
</html>