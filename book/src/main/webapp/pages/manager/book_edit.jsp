<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑图书</title>
	<%--include the base tag, css style and jquery file--%>
	<%@ include file="/pages/common/head.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
	
	input {
		text-align: center;
	}
</style>
</head>
<body>
		<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">编辑图书</span>
			<%--include meau of manager module--%>
			<%@include file="/pages/common/manager_menu.jsp"%>
		</div>
		
		<div id="main">
			<form action="manager/bookServlet" method="get">
				<input type="hidden" name="action" value="${empty param.id ? "add" : "update"}">
				<input type="hidden" name="id" value="${ requestScope.book.id }">
				<table>
					<tr>
						<td>name</td>
						<td>price</td>
						<td>author</td>
						<td>sales</td>
						<td>stock</td>
						<td colspan="2">operation</td>
					</tr>		
					<tr>
						<td><input name="name" type="text" value="${requestScope.book.name}"/></td>
						<td><input name="price" type="text" value="${requestScope.book.price}"/></td>
						<td><input name="author" type="text" value="${requestScope.book.author}"/></td>
						<td><input name="sales" type="text" value="${requestScope.book.sales}"/></td>
						<td><input name="stock" type="text" value="${requestScope.book.stock}"/></td>
						<td><input type="submit" value="submit"/></td>
					</tr>	
				</table>
			</form>
			
	
		</div>

		<%--include footer content --%>
		<%@include file="/pages/common/footer.jsp"%>
</body>
</html>