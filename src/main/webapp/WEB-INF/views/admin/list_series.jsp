<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<%@ include file="tagHeadAdmin.jsp" %>
	<link href="<c:url value="/resources/css/MyCss.css" />" rel="stylesheet">
	
</head>

<body>
  <!-- navbar-->
  <header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow"><a href="#"
        class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a><a
        href="#" class="navbar-brand font-weight-bold text-uppercase text-base">BMOVIE MANAGER</a>
      <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
        <li class="nav-item dropdown ml-auto"><a id="userInfo" href="http://example.com" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle"><img src="${images}/avatar-6.jpg"
              alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow"></a>
          <div aria-labelledby="userInfo" class="dropdown-menu"><a href="#" class="dropdown-item"><strong
                class="d-block text-uppercase headings-font-family">Mark Stephen</strong><small>Web
                Developer</small></a>
            <div class="dropdown-divider"></div><a href="#" class="dropdown-item">Settings</a><a href="#"
              class="dropdown-item">Activity log </a>
            <div class="dropdown-divider"></div><a href="login.html" class="dropdown-item">Logout</a>
          </div>
        </li>
      </ul>
    </nav>
  </header>
  <div class="d-flex align-items-stretch">
  <%@ include file="addMenuAside.jsp" %>
    <div class="page-holder w-100 d-flex flex-wrap">
    
      <div class="container-fluid px-xl-5">
        <section class="py-5">
           <button class="btn btn-primary col-lg-12 ml-12" type="button" onclick="window.location.href='showFormSeries'">Create Series</button>
        </section>

      </div>

<!-- bắt đầu bảng -->
	              <div class="col-lg-12 mb-4">
                <div class="card">
                  <div class="card-header">
                    <h6 class="text-uppercase mb-0">List Series</h6>
                  </div>
                  <div class="card-body" style="overflow-x:auto;">                           
                    <table class="table table-striped table-hover card-text " id="dtHorizontalExample">
                      <thead>
                        <tr>
                        	<th>Image</th>		          		
							<th>Name</th>
							<th>Status</th>
							<th>Totals</th>							
							<th>Created date</th>							
							<th>Id Movie LastCurrent</th>
							<th>Episode</th>													
							<th colspan="2">Action</th>
						</tr>
                      </thead>
                      <tbody>
                      
                     <c:forEach items="${list_series}" var="seri">	 
                      	<%-- <c:url var="deleteLink" value="deleteSerial">
							<c:param name="movieId" value="${seri.fk_movieid}"/>
						</c:url>
						<c:url var="updateLink" value="editSerial">
							<c:param name="movieId" value="${seri.fk_movieid}"/>
						</c:url> --%>     		
						<tr>
			          		<td><img src="${images}/${msug.image}" alt="${url}/${seri.image}"></td>			          		
			          		<td>${seri.name}</td>
			          		<td>${seri.status_series}</td>
			          		<td>${seri.totals_movie}</td>			          			          		
			          		<td>${seri.created_at}</td>			          		
			          		<td>${seri.fk_movieid}</td>
			          		<td>${seri.status}</td>
			          		<td><a href="">Update</a></td>
			          		<td><a href="">Delete</a></td>
		          		 </tr>                                  	 		          	
			          </c:forEach>					
                      </tbody>
                    </table>
                      <!-- Paginate  -->
			   		<div class="paginate">
						<nav >
					    <ul class="pagination">	    		 
					        <c:if test="${page > 1}">
					            <li class="page-item"><a class="page-link" 
					                href="${link}?page=${page-1}">Previous</a>
					            </li>
					        </c:if>
							
					      <c:forEach begin="1" end="${noOfPages}" var="i"> 
					            <c:choose>
					            	
					                <c:when test="${page eq i}">
					                    <li class="page-item active"><a class="page-link">
					                            ${i} <span class="sr-only">(current)</span></a>
					                    </li>
					                </c:when>
					                <c:otherwise>
					                    <li class="page-item"><a class="page-link" 
					                        href="${link}?page=${i}">${i}</a>
					                    </li>
					                </c:otherwise>
					            </c:choose>
					      </c:forEach>
					      <c:if test="${page lt noOfPages}">		      
					     		<li class="page-item"><a class="page-link" 
					                href="${link}?page=${page+1}">Next</a>
					            </li>    
			         	  </c:if> 	
					    </ul>
						</nav>
					</div>
			    	<!-- End Paginate  -->
                  </div>
                </div>
              </div>
<!-- kết thúc bảng -->

      <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6 text-center text-md-left text-primary">
              <p class="mb-2 mb-md-0">Your company &copy; 2018-2020</p>
            </div>
            <div class="col-md-6 text-center text-md-right text-gray-400">
              <p class="mb-0">Design by <a href="https://bootstrapious.com/admin-templates"
                  class="external text-gray-400">Bootstrapious</a></p>
              <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!-- JavaScript files-->
  <%@ include file="scriptAdmin.jsp" %>  
  <script type="text/javascript">
  	(function() {
	    document.getElementById('quanliuseractive').setAttribute('data-href', location.href);
		})();
  </script>
  <script src="<c:url value="/resources/js/scroll-horizontal.js" />"></script>
</html>