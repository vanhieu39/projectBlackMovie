<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
</head>
<body>
	<h1>List User</h1>
	<button onclick="window.location.href='showFormAddUser'">Add
		User</button>
	<div>
		<table border="1">
			<tr>
				<th>UserName</th>
				<th>Password</th>
				<th>Role</th>
				<th>Fullname</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>Birthday</th>
				<th>Date Register</th>
				<th>Is Enable</th>
				<th>Update date</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${ listuser}" var="e">
				<c:url var="deleteLink" value="deleteUser">
					<c:param name="userId" value="${e.id_user}" />
				</c:url>
				<c:url var="updateLink" value="editUser">
					<c:param name="userId" value="${e.id_user}" />
				</c:url>
				<tr>
					<td>${e.username }</td>
					<td>${e.password }</td>
					<td>${e.role }</td>
					<td>${e.fullname }</td>
					<td>${e.email }</td>
					<td>${e.phone }</td>
					<td>${e.gender }</td>
					<fmt:parseDate value="${e.birthday }" var="varBirthday"
						pattern="yyyy-MM-dd" />
					<td><fmt:formatDate pattern="dd-MM-yyyy"
							value="${varBirthday }" /></td>
					<fmt:parseDate value="${e.date_register }" var="varDateRegister"
						pattern="yyyy-MM-dd" />
					<td><fmt:formatDate pattern="dd-MM-yyyy"
							value="${varDateRegister }" /></td>
					<td>${e.is_enable }</td>
					<fmt:parseDate value="${e.updatedate }" var="varUpdate"
						pattern="yyyy-MM-dd" />
					<td><fmt:formatDate pattern="dd-MM-yyyy" value="${varUpdate }" /></td>

					<td><a href="${updateLink }">Update</a> | <a
						href="${ deleteLink}"
						onclick="if(!confirm('Are you sure want to delete this Employee permanently')) return false">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>