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
		
		<hr />
		 <!-- Form Elements -->
              <div class="col-lg-12 mb-5">
                <div class="card">
                  <div class="card-header">
                    <h3 class="h6 text-uppercase mb-0">Please Input Information Series</h3>
                  </div>
                  <div class="card-body">
                    <s:form method="POST" action="saveSeries" modelAttribute="series" >
                    <s:hidden path="id" />
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Series Name</label>
                        <div class="col-md-9">
                          <s:input path="name" type="text" class="form-control" />
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Status</label>
                        <div class="col-md-2 select mb-3">
                          <s:select path="status" class="form-control">
                            <s:option value="Finished">Finished</s:option>
							<s:option value="Continue">Continue</s:option>
							<s:option value="WilBeNext">Wil Be Next</s:option>							
                          </s:select>
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Totals</label>
                        <div class="col-md-2">
                        	
	                        <c:if test = "${series.totals_movie == null}">
	                          <s:input path="totals_movie" type="int" value="20" class="form-control" />
						    </c:if>
	                        <c:if test = "${series.totals_movie != null}">
	                          <s:input path="totals_movie" type="int" class="form-control" />
						    </c:if>
                        </div>
                      </div>                      
                                                             
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Last Movie Presentation</label>
                        <div class="col-md-9">
                           	<s:select class="form-control" path="fk_movieid" >
	                          	<s:option selected="selected" value="-1" disabled="disabled">Please select Movie </s:option>   
							          <c:forEach items="${list_movies}" var="m" >
							              <option value="${m.id_film}" ${param.fk_movieid == option.key ? 'selected' : ''}>${m.name_film} Tap ${m.status}</option>
							          </c:forEach>					           	                          							
	                        </s:select>	                                               
                        </div>
	                   </div>   
	                                                         	
                        </div>
                      </div>
                      <div class="line"></div>                     	     
                      <div class="form-group row">
                        <div class="col-md-9 ml-auto">
                          <button type="button" class="btn btn-secondary" onclick="if(confirm('Are you sure want to Cancel?')) window.location.href='<c:url value="/manager/series"/>'">Cancel</button>
                          <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                      </div>
                    </s:form>
		<hr />
		<a href="manager/series">Back to List</a>
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