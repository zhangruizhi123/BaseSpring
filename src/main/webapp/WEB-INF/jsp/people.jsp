<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="ctx" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍类型管理</title>
<jsp:include page="_mate.jsp"></jsp:include>
<script type="text/javascript">
function urlOpen(url){
	return "<a href='"+url+"' target='_blank'>查看</a>";
}

</script>
</head>
<body>
	<div class="table">
		<table id="tt" class="easyui-datagrid" style="width:100%;"
			url="${ctx}/listPeople"
			title="最新公开信息" iconCls="icon-save"
			singleSelect="true"
			rownumbers="true" pagination="true">
			<thead>
				<tr>
					<th field="id" hidden="true" width="300" align="center">id</th>
					<th field="title" width="350" align="center">标题</th>
					<th field="url" width="100" align="center" formatter="urlOpen">连接</th>
					<th field="produceData" width="180" align="center" formatter="dateFormat">产生日期</th>
					<th field="indexNo" width="180" align="center" >索取号</th>
				</tr>
			</thead>
		</table>
		
		
	</div>

</body>
</html>