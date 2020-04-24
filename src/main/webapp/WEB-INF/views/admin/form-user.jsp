<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%@ include file="tagHeadAdmin.jsp" %>
</head>
<body>

	<div class="container">
		<h1>Please Input Information Movie Fields</h1>
		<hr />
		<s:form action="saveProcessMovie" modelAttribute="movie" enctype="multipart/form-data">
			<s:hidden path="" value="${movie.id_film}" id="id" /> 
			<s:hidden path="" value="${movie.open_date}" id="open_date" />
			<s:hidden path="" value="${movie.new_film}" id="new_film" />	
				
			
			<div class="form-group">
				<input path="name_film" class="form-control"
				placeholder="Enter Name Movie" />
			</div>
			
			<div class="form-group"> 
				<input path="status" class="form-control"
				placeholder="Enter status Movie" />
			</div>
			
			<div class="form-group">
				<input path="list_author" placeholder="Enter list_author homepage" class="form-control" />
			</div>
			
			<div class="form-group">
				<input path="list_actor" placeholder="Enter list_actor overview" class="form-control" />
			</div>
 
			<div class="form-group">
				<input path="nation" placeholder="Enter nation Liked" class="form-control" />
			</div>				
			
			<div class="form-group">
				<input type="date" path="open_date" placeholder="Choose Date Released" class="form-control" />
			</div>
			
			<div class="form-group">
				<input path="time" class="form-control" placeholder="Enter  time" />
			</div>
			
			<div class="form-group">
				<input path="quality" placeholder="Choose quality" class="form-control" />
			</div>				
			
			<div class="form-group"> 
				<input path="num_view" placeholder="Enter num_view" class="form-control" />
			</div>
 
			<div class="form-group"> 
				<input path="description" placeholder="Enter description" class="form-control" />
			</div>
					
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<checkbox path="keyword" value="Short Movie" class="form-check-input"/>Short Movie
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<checkbox path="keyword" value="Series Movie" class="form-check-input"/>Series Movie
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<checkbox path="keyword" value="Series Movie Full" class="form-check-input"/>Series Movie Full
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<checkbox path="keyword" value="Trailer" class="form-check-input"/>Trailer
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<input path="image" class="form-control"
				placeholder="Enter Image Name" />
			</div>
			
			<div class="form-group">
				<input path="link_film" class="form-control"
				placeholder="Enter link_film Name" />
			</div>
			
			<div class="form-group">
				<input path="link_trailer" class="form-control"
				placeholder="Enter link_trailer Name" />
			</div>
			
			<div class="form-group">
				<input path="category" class="form-control"
				placeholder="Enter category Name" />
			</div>
			
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<radiobutton path="new_film" value="1" class="form-check-input"/> New
					</label>
				</div>
			
				<div class="form-check-inline">
					<label class="form-check-label">
						<radiobutton path="new_film" value="0" class="form-check-input"/> Old
					</label>
				</div>
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
	</div>
		
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
	
	<%@ include file="scriptAdmin.jsp" %>
</body>
</html>