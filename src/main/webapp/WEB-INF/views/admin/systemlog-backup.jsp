<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
</head>
<body>
	<h1>System Log</h1>
	<button onclick="if(confirm('Are you sure want to Clear All SystemLog!')) window.location.href='<c:url value="/manager/clearlog"/>'">Clear Log</button>
	<div> 
		<table border="1">
			<tr>
				<th>ID Log</th>
				<th>User Excute</th>
				<th>Action</th>
				<th>Excute Table</th>
				<th>SQL Comment</th>
				<th>Execute Time</th>
				<th>Execute Day</th>
			</tr>
			<c:forEach items="${listalllog}" var="e">
				
				<tr>
					<td>${e.id_log }</td>
					<td>${e.id_user}</td>
					<td>${e.action}</td>
					<td>${e.execute_table }</td>
					<td>${e.sqlcomment }</td>
					<td>${e.execute_time }</td>
					<td>${e.execute_date }</td>				
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>