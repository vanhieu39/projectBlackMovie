<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Actor</title>
</head>
<body>
	<h1>List Actor</h1>
	<button onclick=" window.location.href='<c:url value="/manager/showFormAddActor"/>'">Add Actor</button>
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
			<c:forEach items="${ listactor}" var="e">
				<c:url var="deleteLink" value="deleteActor">
					<c:param name="actorID" value="${e.id_actor}"/>
				</c:url>
				<c:url var="updateLink" value="updateActor">
					<c:param name="actorID" value="${e.id_actor}"/>
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
					<a href="${ deleteLink}" onclick="if(!confirm('Are you sure want to Delete this Actor?')) return false">Delete</a> </td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>