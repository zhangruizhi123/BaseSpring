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
<script type="text/javascript">
</script>
</head>
<body>
	<form id="forms" action="${ctx}/upload" method="post" enctype="multipart/form-data">
		<input type="text" name="name">
		<input type="radio" name="sex" value="1">
		<input type="radio" name="sex" value="0">
		<input type="file" name="file">
		<input type="submit" id="btn" value="提交">
	</form>
</body>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		//$("#forms").form({});
		//alert();
	});
});
</script>
</html>