<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>

	<div class="container">
		<h1>Please Input Information Movie Country</h1>
		<hr />
		<%-- <s:form action="saveProcessMovie" modelAttribute="movie" enctype="multipart/form-data">
			<s:hidden path="" value="${movie.id_film}" id="id" /> 
			<s:hidden path="" value="${movie.open_date}" id="open_date" />
			<s:hidden path="" value="${movie.new_film}" id="new_film" />	
				
			
			<div class="form-group">
				<s:input path="name_film" class="form-control"
				placeholder="Enter Name Movie" />
			</div>
			
			<div class="form-group"> 
				<s:input path="status" class="form-control"
				placeholder="Enter status Movie" />
			</div>
			
			<div class="form-group">
				<s:input path="list_author" placeholder="Enter list_author homepage" class="form-control" />
			</div>
			
			<div class="form-group">
				<s:input path="list_actor" placeholder="Enter list_actor overview" class="form-control" />
			</div>
 
			<div class="form-group">
				<s:input path="nation" placeholder="Enter nation Liked" class="form-control" />
			</div>				
			
			<div class="form-group">
				<s:input type="date" path="open_date" placeholder="Choose Date Released" class="form-control" />
			</div>
			
			<div class="form-group">
				<s:input path="time" class="form-control" placeholder="Enter  time" />
			</div>
			
			<div class="form-group">
				<s:input path="quality" placeholder="Choose quality" class="form-control" />
			</div>				
			
			<div class="form-group"> 
				<s:input path="num_view" placeholder="Enter num_view" class="form-control" />
			</div>
 
			<div class="form-group"> 
				<s:input path="description" placeholder="Enter description" class="form-control" />
			</div>
					
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Short Movie" class="form-check-input"/>Short Movie
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Series Movie" class="form-check-input"/>Series Movie
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Series Movie Full" class="form-check-input"/>Series Movie Full
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Trailer" class="form-check-input"/>Trailer
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<s:input path="image" class="form-control"
				placeholder="Enter Image Name" />
			</div>
			
			<div class="form-group">
				<s:input path="link_film" class="form-control"
				placeholder="Enter link_film Name" />
			</div>
			
			<div class="form-group">
				<s:input path="link_trailer" class="form-control"
				placeholder="Enter link_trailer Name" />
			</div>
			
			<div class="form-group">
				<s:input path="category" class="form-control"
				placeholder="Enter category Name" />
			</div>
			
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:radiobutton path="new_film" value="1" class="form-check-input"/> New
					</label>
				</div>
			
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:radiobutton path="new_film" value="0" class="form-check-input"/> Old
					</label>
				</div>
			</div>
			
			
			<div class="form-group"> 
				<s:input path="serial_id" placeholder="Enter serial_id" class="form-control" />
			</div>
			
			<div class="form-group">
				<s:select path="serial_id" class="form-control">
					<s:option value="0">--Select--Default--Single</s:option>
					<s:option value="1">Series Marvel’s The Avengers</s:option>					
					<s:option value="2">Series Australia</s:option>
					<s:option value="3">Series Japan</s:option>
					<s:option value="4">Series America</s:option>
					<s:option value="5">Series Tay Du Ky</s:option>
					<s:option value="6">Series HTV7</s:option>
				</s:select>
			</div>		
								
			<!-- <div class="form-group">				
				<input type="file" name="image" size="50" 
				class="form-control" />
			</div>	 -->	 
			
			<input type="submit" value="Save" class="btn btn-info" />&nbsp; 
			<input type="reset" value="Reset" class="btn btn-danger" />
 
		</s:form>
		<hr />
		<a href="movies-all">Back to List</a>
	</div> --%>
		
	<%-- <script
		src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var hobbies = $("#hobbies").val().split(",");
			var $checkboxes = $("input[type=checkbox]");
			$checkboxes.each(function(idx, element) {
				if (hobbies.indexOf(element.value) != -1) {
					element.setAttribute("checked", "checked");
					$("#hobbies").val("");
				} else {
					element.removeAttribute("checked");
				}
			});
		});
	</script> --%>
	
</body>
</html>