<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%@ include file="tagHeadAdmin.jsp" %>
</head>
<body>

	<div class="container">
		<h1>Please Input Information Movie Fields</h1>
		<hr/>
		<s:form action="saveProcessMovie" modelAttribute="movie" enctype="multipart/form-data" method="POST">
			<s:hidden path="" value="${movie.id_film}" id="id_film" /> 
			<s:hidden path="" value="${movie.open_date}" id="open_date" />
			<s:hidden path="" value="${movie.new_film}" id="new_film" />	
			<s:hidden path="" value="${movie.is_series}" id="is_series" />				
			
		  <div class="line"></div>
          <div class="form-group row">
               <label class="col-md-3 form-control-label">Contain Multiple Category</label>
               <div class="col-md-9">
                  	<s:select class="form-control" path="" multiple="multiple">
                  	<s:option selected="selected" value="-1" disabled="disabled" >Please Choose One Or Multiple Categories </s:option>   
			         <c:forEach items="${genres}" var="g" >
			             <option value="${g.genre_id}" ${param.genre_id == option.key ? 'selected' : ''}>${g.genre_name}</option>
			         </c:forEach>					           	                          							
                </s:select>	                                               
               </div>
           </div> 
           
           <div class="line"></div>
          <div class="form-group row">
               <label class="col-md-3 form-control-label">Contain Multiple Actors</label>
               <div class="col-md-9">
                  	<s:select class="form-control" path="" multiple="multiple">
                  	<s:option selected="selected" value="-1" disabled="disabled" >Please Choose One Or Multiple Actors</s:option>   
			         <c:forEach items="${actors}" var="a" >
			             <option value="${a.id_actor}" ${param.id_actor == option.key ? 'selected' : ''}>${a.fullname}</option>
			         </c:forEach>					           	                          							
                </s:select>	                                               
               </div>
           </div> 
           
           <div class="line"></div>
          <div class="form-group row">
               <label class="col-md-3 form-control-label">Contain Multiple countries</label>
               <div class="col-md-9">
                  	<s:select class="form-control" path="" multiple="multiple">
                  	<s:option selected="selected" value="-1" disabled="disabled" >Please Choose One Or Multiple countries</s:option>   
			         <c:forEach items="${countries}" var="c" >
			             <option value="${c.country_id}" ${param.country_id == option.key ? 'selected' : ''}>${c.country_name}</option>
			         </c:forEach>					           	                          							
                </s:select>	                                               
               </div>
           </div>
           
          <div class="line"></div>
          <div class="form-group row">
               <label class="col-md-3 form-control-label">Contain Multiple Keywords</label>
               <div class="col-md-9">
                  	<s:select class="form-control" path="" multiple="multiple">
                  	<s:option selected="selected" value="-1" disabled="disabled" >Please Choose One Or Multiple Keywords</s:option>   
			         <c:forEach items="${keywords}" var="k" >
			             <option value="${k.keyword_id}" ${param.keyword_id == option.key ? 'selected' : ''}>${k.keyword_name}</option>
			         </c:forEach>					           	                          							
                </s:select>	                                               
               </div>
           </div>              
			
			<div class="form-group">
				<s:input path="name_film" class="form-control"
				placeholder="Enter Name Title Movie" />
			</div>
			
			<div class="form-group"> 
				<s:input path="status" class="form-control" placeholder="Enter status Movie And Episode Current" />
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
				<s:input type="int" path="num_view" placeholder="Enter Float num_view" class="form-control" />
			</div>
 
			<div class="form-group"> 
				<s:textarea path="description" placeholder="Enter description" class="form-control" />
			</div>
					
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Chrixmas" class="form-check-input"/>Christmas
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Supper Man" class="form-check-input"/>Supper Man
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Cinemax" class="form-check-input"/>Cinemax
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="keyword" value="Trailer" class="form-check-input"/>Trailer
					</label>
				</div>
			</div>
					
			 <div class="line"></div>
              	<div class="form-group row">
                   <label class="col-md-3 form-control-label">Images Thubnails</label>
                   <div class="col-md-9" style="display: flex;">
                       <s:hidden path="image" />
                     	<input type="file" name="multipartFile" accept="image/gif, image/jpeg, image/png" /><br />
                       <c:if test = "${not empty movie.image}">
                      		<span>Old Images: <a href="${movie.image}">${movie.image}</a> </span>
			  		 </c:if>
                   </div>
               </div>
               
            <div class="line"></div>
              	<div class="form-group row">
                   <label class="col-md-3 form-control-label">Images Details 1</label>
                   <div class="col-md-9" style="display: flex;">
                       <s:hidden path="image_detail1" />
                     	<input type="file" name="multipartFile" accept="image/gif, image/jpeg, image/png" /><br />
                       <c:if test = "${not empty movie.image_detail1}">
                      		<span>Old Images Details 1: <a href="${movie.image_detail1}">${movie.image_detail1}</a> </span>
			  		 </c:if>
                   </div>
               </div>
               
            <div class="line"></div>
              	<div class="form-group row">
                   <label class="col-md-3 form-control-label">Images Details 2</label>
                   <div class="col-md-9" style="display: flex;">
                       <s:hidden path="image_detail2" />
                     	<input type="file" name="multipartFile" accept="image/gif, image/jpeg, image/png" /><br />
                       <c:if test = "${not empty movie.image_detail2}">
                      		<span>Old Images Details 2: <a href="${movie.image_detail2}">${movie.image_detail2}</a> </span>
			  		 </c:if>
                   </div>
               </div>      
			
			<div class="line"></div>
              	<div class="form-group row">
                   <label class="col-md-3 form-control-label">Source Film</label>
                   <div class="col-md-9" style="display: flex;">
                       <s:hidden path="link_film" />
                     	<input type="file" name="multipartFile" accept="video/mp4" /><br />
                       <c:if test = "${not empty movie.link_film}">
                      		<span>Old Source Film: <a href="${movie.link_film}">${movie.link_film}</a> </span>
			  		 </c:if>
                   </div>
               </div>
               
           <%-- div class="line"></div>
              	<div class="form-group row">
                   <label class="col-md-3 form-control-label">Source Trailer</label>
                   <div class="col-md-9" style="display: flex;">
                       <s:hidden path="link_trailer" />
                     	<input type="file" name="multipartFile" accept="video/mp4" /><br />
                       <c:if test = "${not empty movie.link_trailer}">
                      		<span>Old Source Trailer: <a href="${movie.link_trailer}">${movie.link_trailer}</a> </span>
			  		 </c:if>
                   </div>
               </div>  --%>   
            <div class="line"></div>         
            <div class="form-group"> 
				<s:input type="int" path="link_trailer" placeholder="Enter Float link_trailer" class="form-control" />
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
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:radiobutton path="is_series" value="1" class="form-check-input"/> Yes Series
					</label>
				</div>
			
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:radiobutton path="is_series" value="0" class="form-check-input"/> No Short
					</label>
				</div>
			</div>	 
			
			<input type="submit" value="Save" class="btn btn-info" />&nbsp; 
			<input type="reset" value="Reset" class="btn btn-danger" />
 
		</s:form>
		<hr />
		<a href="movies-all">Back to List</a>
	</div>
		
	<script
		src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var keyword = $("#keyword").val().split(",");
			var $checkboxes = $("input[type=checkbox]");
			$checkboxes.each(function(idx, element) {
				if (hobbies.indexOf(element.value) != -1) {
					element.setAttribute("checked", "checked");
					$("#keyword").val("");
				} else {
					element.removeAttribute("checked");
				}
			});
		});
	</script>
	
	<%@ include file="scriptAdmin.jsp" %>
</body>
</html>