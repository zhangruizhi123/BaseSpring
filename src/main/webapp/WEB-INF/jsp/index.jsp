<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="_mate.jsp"></jsp:include>
<c:set var="ctx" value="<%=request.getContextPath()%>"/>
<title>我的模板</title>

<script type="text/javascript">


</script>
</head>
<body>
<div class="container">
			
			<a class="btn btn-success" data-toggle="modal" data-backdrop="static" aria-hidden="false" data-target="#abc">打开</a>
			<div class="modal in" id="abc">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<span class="modal-title">标题</span>
							
						</div>
						<div class="modal-body">
							身体
						</div>
						<div class="modal-footer">
							<div class="btn-group">
								<a class="btn btn-success">提交</a>
								<a class="btn btn-danger" data-dismiss="modal">取消</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--表格-->
			<div>
				<table class="table table-bordered table-condensed table-hover">
					<thead>
						<tr class="table-hover">
							<td>表头1</td>
							<td>表头2</td>
							<td>表头3</td>
							<td>表头4</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>11</td>
							<td>12</td>
							<td>13</td>
							<td>14</td>
						</tr>
						<tr>
							<td>11</td>
							<td>12</td>
							<td>13</td>
							<td>14</td>
						</tr>
						<tr>
							<td>11</td>
							<td>12</td>
							<td>13</td>
							<td>14</td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<button class="btn btn-success">
				<i class="glyphicon glyphicon-education"></i>
				有图标的小按钮
				<i class="glyphicon glyphicon-tree-deciduous"></i>
			</button>
			<!--输入组-->
			<div class="input-group">
				<i class="input-group-addon">W</i>
				<input type="text" class="input-lg"/>
				<i class="input-group-addon">.00</i>
			</div>
			<a class="btn btn-success" href="#">成功</a>
			<i class="glyphicon glyphicon-alert"></i>
			<div class=" glyphicon glyphicon-arrow-down"></div>
			<div class="group">
				<i class="glyphicon glyphicon-arrow-up"></i>
				<input type="text"/>
				
			</div>
			<div class="hidden-sm hidden-xs" style="background-color: #00f; height: 20px;width:100px;"></div>
			<div class="row">
				<div class="col-sm-12 col-lg-3 col-md-6" style=" height: 20px; border: 1px solid #f00;"></div>
				<div class="col-sm-12 col-lg-3 col-md-6" style="height: 20px; border: 1px solid #f00;"></div>
				<div class="col-sm-12 col-lg-3 col-md-6" style="height: 20px; border: 1px solid #f00;"></div>
				<div class="col-sm-12 col-lg-3 col-md-6" style="height: 20px; border: 1px solid #f00;"></div>
			</div>
		</div>
</body>
</html>