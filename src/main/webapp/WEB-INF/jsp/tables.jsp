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
	<div class="tb">
	<h2>表格数据</h2>
	
	</div>
	<div class="container">
			<div class="row">
				<c:forEach items="${tables}" var="table">
						<div class="col-md-3 col-sm-4 col-xs-6">
							<div class="panel panel-danger">
								<div class="panel-heading">
									<div class="panel-title">表名:(${table.name})</div>
								</div>
								<div class="panel-body">
									<table class="table table-bordered table-condensed table-hover">
											<thead>
												<tr class="table-hover">
													<td>列名</td>
													<td>类型</td>
													<td>长度</td>
													<td>主键</td>
													<td>选择</td>
												</tr>
											</thead>
											<tbody>
												<c:forEach begin="0" end="${table.columnSize-1}" var="index">
													<tr>
														<td>${table.columnName[index] }</td>
														<td>${table.columnType[index] }</td>
														<td>${table.columnLength[index] }</td>
														<c:if test="${table.columnName[index] eq table.primaryKey}">
															<td>是</td>
														</c:if>
														
														<c:if test="${table.columnName[index] != table.primaryKey}">
															<td>否</td>
														</c:if>
														<td><input class="form-control" type="checkbox"></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									
								</div>
							</div>
						</div>
				</c:forEach>
				
			</div>
	</div>
	
</body>
<script type="text/javascript">
$(function(){
});
</script>
</html>