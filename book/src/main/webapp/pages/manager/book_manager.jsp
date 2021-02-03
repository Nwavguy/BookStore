<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
	<%--include the base tag, css style and jquery file--%>
	<%@ include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function () {
			$("a.deleteClass").click(function () {
				return confirm("Do you want to delete [" + $(this).parent().parent().find("td:first").text() + "]?");
			})
		});
	</script>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">Book Management System</span>
		<%--include meau of manager module--%>
		<%@include file="/pages/common/manager_menu.jsp"%>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>name</td>
				<td>price</td>
				<td>author</td>
				<td>sales</td>
				<td>stock</td>
				<td colspan="2">operation</td>
			</tr>

			<c:forEach items="${requestScope.books}" var="book">
			<tr>
				<td>${book.name}</td>
				<td>${book.name}</td>
				<td>${book.author}</td>
				<td>${book.sales}</td>
				<td>${book.stock}</td>
				<td><a href="manager/bookServlet?action=getBook&id=${book.id}">update</a></td>
				<td><a class="deleteClass" href="manager/bookServlet?action=delete&id=${book.id}">delete</a></td>
			</tr>
			</c:forEach>

			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="pages/manager/book_edit.jsp">Add Book</a></td>
			</tr>

			

		</table>
	</div>

	<%--include footer content --%>
	<%@include file="/pages/common/footer.jsp"%>
</body>
</html>