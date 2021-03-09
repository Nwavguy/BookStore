<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Management</title>
	<%--include the base tag, css style and jquery file--%>
	<%@ include file="/pages/common/head.jsp"%>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">Order Management System</span>
			<%--include meau of manager module--%>
			<%@include file="/pages/common/manager_menu.jsp"%>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>Date</td>
				<td>Amount</td>
				<td>Detail</td>
				<td>Ship</td>
				
			</tr>		
			<tr>
				<td>2020.04.23</td>
				<td>90.00</td>
				<td><a href="#">detail</a></td>
				<td><a href="#">ship</a></td>
			</tr>	
			
			<tr>
				<td>2015.04.20</td>
				<td>20.00</td>
				<td><a href="#">detail</a></td>
				<td>shipped</td>
			</tr>	
			
			<tr>
				<td>2020.01.23</td>
				<td>190.00</td>
				<td><a href="#">Detail</a></td>
				<td>Waiting for receive</td>
			</tr>		
		</table>
	</div>

	<%--include footer content --%>
	<%@include file="/pages/common/footer.jsp"%>
</body>
</html>