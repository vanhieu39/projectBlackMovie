<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Director</title>
</head>
<body>
	<h1>List Directors</h1>
	<button onclick=" window.location.href='<c:url value="/manager/showFormAddDirector"/>'">Add Director</button>
	<div> 
		<table border="1">
			<tr>
				<th>Full Name</th>
				<th>Gender</th>
				<th>Birthday</th>
				<th>Nation</th>
				<th>Images</th>
				<th>view</th>
			</tr>
			<c:forEach items="${ listdirector}" var="e">
				<c:url var="deleteLink" value="deleteDirector">
					<c:param name="id" value="${e.id}"/>
				</c:url>
				<c:url var="updateLink" value="updateDirector">
					<c:param name="id" value="${e.id}"/>
				</c:url>
				<tr>
					<td>${e.fullname }</td>
					<td>${e.gender }</td>
					<fmt:parseDate value="${e.birthday }" var="varBirthday" pattern="yyyy-MM-dd"/>
					<td> <fmt:formatDate pattern="dd-MM-yyyy" value="${varBirthday }" /></td>
					<td>${e.nation }</td>
					<td>${e.images }</td>
					<td>${e.view }</td>
					<td><a href="${updateLink }">Update</a> | 
					<a href="${ deleteLink}" onclick="if(!confirm('Are you sure want to Delete this Dircetor?')) return false">Delete</a> </td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>