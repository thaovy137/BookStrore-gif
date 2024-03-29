<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ứng dụng quản lý kho sách</title>
</head>
<body>
<center>
		<h1>QUẢN LÝ SÁCH</h1>
		<h2>
			<a href="/BookStrore/new">Thêm mới Sách</a> &nbsp;&nbsp;&nbsp; <a href="/BookStrore/list">Danh Sách</a>

		</h2>
	</center>
	<hr>
	
	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>Danh mục sách</h2>
			</caption>
			<tr>
				<th>Mã</th>
				<th>Tên sách</th>
				<th>Tác giả</th>
				<th>Giá bán</th>
				<th>Thao tác</th>
			</tr>
			<c:forEach var="book" items="${listBook}">
				<tr>
					<td><c:out value="${book.id}" /></td>
					<td><c:out value="${book.title}" /></td>
					<td><c:out value="${book.author}" /></td>
					<td><c:out value="${book.price}" /></td>
					<td><a href="/BookStrore/edit?id=<c:out value='${book.id}' />">Sửa</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="/BookStrore/delete?id=<c:out value='${book.id}' />">Xóa</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="/BookStrore/detail?id=<c:out value='${book.id}' />">Chi tiết</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>