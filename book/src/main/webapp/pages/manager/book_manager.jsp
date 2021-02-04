<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>图书管理</title>

	<%-- include base tag、css and jQuery file --%>
	<%@ include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function () {

			$("a.deleteClass").click(function () {
				return confirm("Do you want to delete【" + $(this).parent().parent().find("td:first").text() + "】?");
			});
		});
	</script>

</head>
<body>

<div id="header">
	<img class="logo_img" alt="" src="../../static/img/logo.gif" >
	<span class="wel_word">Book Management System</span>

	<%-- include manager menu  --%>
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

		<c:forEach items="${requestScope.page.items}" var="book">
			<tr>
				<td>${book.name}</td>
				<td>${book.price}</td>
				<td>${book.author}</td>
				<td>${book.sales}</td>
				<td>${book.stock}</td>
				<td><a href="manager/bookServlet?action=getBook&id=${book.id}&pageNo=${requestScope.page.pageNo}">update</a></td>
				<td><a class="deleteClass" href="manager/bookServlet?action=delete&id=${book.id}&pageNo=${requestScope.page.pageNo}">delete</a></td>
			</tr>
		</c:forEach>

		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td><a href="pages/manager/book_edit.jsp?pageNo=${requestScope.page.pageTotal}">Add Book</a></td>
		</tr>
	</table>


	<%--include paging bar --%>
	<%@include file="/pages/common/page_nav.jsp"%>




</div>


<%--include footer--%>
<%@include file="/pages/common/footer.jsp"%>


</body>
</html>