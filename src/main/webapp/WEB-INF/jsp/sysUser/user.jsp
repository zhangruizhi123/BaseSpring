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
			<form action="" id="fmt" style="display: none">
				<div class="input-group">
					<span class="input-group-addon">登录名:</span> <input type="text"
						class="form-control nickName" name="nickName" placeholder="请输入用户名">
				</div>
				<div class="input-group">
					<span class="input-group-addon">姓名:</span> <input type="text"
						class="form-control name" name="name" placeholder="请输入姓名">
				</div>
				<div class="input-group">
					<span class="input-group-addon">性别:</span> <input type="radio"
						class="form-control name" name="sex" value="1"> <input
						type="radio" class="form-control name" name="sex" value="3">
				</div>
				<div class="input-group">
					<span class="input-group-addon">爱好:</span> <input type="checkbox"
						class="form-control love" name="love" value="1"> <input
						type="checkbox" class="form-control love" name="love" value="2">
					<input type="checkbox" class="form-control love" name="love"
						value="3"> <input type="checkbox"
						class="form-control love" name="love" value="4">
				</div>
				<div class="input-group">
					<span class="input-group-addon">爱好:</span> <select name="select"
						class="form-control">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
			</form>
			<div class="col-md-12">
				<div class="pan"></div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		var table=$(".pan").table({
			title : '用户管理2',
			url : '${ctx}/sysUser/listUser.json',
			param : {
				name : 'zhang'
			},
			column : [ {
				field : 'id',
				name : '主键',
				visible : 'hide',
				align : 'center'
			}, {
				field : 'name',
				name : '名称',
				rander : function(value, data) {
					return "<span style='color:red'>" + value + "</span>";
				}
			}, {
				field : 'nickName',
				name : '登录名'
			}, {
				field : 'createTime',
				name : '创建日期',
				align : 'center'
			}, ]
		});
		resizeHeigt();
	});
</script>
</html>