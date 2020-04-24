<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
</head>
<body>

	<s:form modelAttribute="user" action="saveProcess">
		<s:hidden path="id_user"/>
		<s:hidden path="id_actor"/>
		Username: <s:input path="username"  /><br/>
		Password: <s:input path="password"  type="password"/><br/>
		Role: 	<s:select path="role">
					<s:option value="0">0</s:option>
					<s:option value="1">1</s:option>
					<s:option value="2">2</s:option>
					<s:option value="3">3</s:option>
					<s:option value="4">4</s:option>
					<s:option value="5">5</s:option>
				</s:select><br/>
		Fullname:<s:input path="fullname"  /><br/>
		Email <s:input path="email"  /><br/>
		Phone: <s:input path="phone"  /><br/>
		Gender: <s:select path="gender">
					<s:option value="0">Female</s:option>
					<s:option value="1">Male</s:option>
					<s:option value="2">Bi</s:option>
					</s:select><br/>	
		<!-- add source type date input -->
		Birthday: <s:input type="date" path="birthday"  /><br/>
		Date Register: <s:input type="date" path="date_register" /><br/>
		Is enable: <s:select path="is_enable">
					<s:option value="1">Yes</s:option>
					<s:option value="0">No</s:option>
					</s:select><br/>
		Update date: <s:input type="date" path="updatedate"/><br/>
		<input type="submit" value="Save User"/>
	</s:form>

</body>
</html>