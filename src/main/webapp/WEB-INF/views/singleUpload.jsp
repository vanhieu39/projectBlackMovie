<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
<h1>Single File Upload</h1>
	<form method="post" enctype="multipart/form-data" action="singleSave">
		Upload File: <input type="file" name="file">
		<br /><br />
		<!-- Description: <input type="text" name="desc"/> -->
		<br/><br/><input type="submit" value="Upload"> 
	</form>
</body>
</html>