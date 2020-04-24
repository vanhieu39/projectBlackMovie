<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Director</title>
</head>
<body>
	<s:form modelAttribute="director" action="saveDirector" method="POST">
		<s:hidden path="id" />
		FullName:<s:input path="fullname"  /><br/>
		Gender: <s:select path="gender">
					<s:option value="0">Female</s:option>
					<s:option value="1">Male</s:option>
					<s:option value="2">Bi</s:option>
					</s:select><br/>	
		Birthday: <s:input type="date" value="1990-12-31" path="birthday"  /><br/>
		Nation <s:input path="nation"  /><br/>
		Images <s:input path="images"  /><br/>
		View <s:input path="view"  /><br/>
		<input type="submit" value="Save Director"/>
	</s:form>
</body>
</html>