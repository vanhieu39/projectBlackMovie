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
	<!-- 
		<h2>Welcome ID: ${userId}</h2>
		<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>
	 -->
	
	
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
        <section class="py-2">
        </section>
        <input id="countmovieinput" type="hidden" value="${countmovie }" />
        <input id="countloginput" type="hidden" value="${countlog }" />
        <input id="countactorinput" type="hidden" value="${countactor }" />
        <input id="countwomenactorinput" type="hidden" value="${countwomenactor }" />
        <input id="countdirectorsinput" type="hidden" value="${countdirectors }" />
        <input id="countwomendirectorsinput" type="hidden" value="${countwomendirectors }" />
        <section>
          <div class="row mb-4">
            <div class="col-lg-6 mb-4 mb-lg-0 pl-lg-0">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row align-items-center flex-row">
                    <div class="col-lg-5">
                      <h2 class="mb-0 d-flex align-items-center"><span>${countmovie }</span><span class="dot bg-violet d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Movies</span>
                      <hr><small class="text-muted">Tổng Số Phim Trên Trang</small>
                    </div>
                    <div class="col-lg-7">
                      <canvas id="pieChartHome1"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="row align-items-center flex-row">
                    <div class="col-lg-5">
                      <h2 class="mb-0 d-flex align-items-center"><span>${countactor}</span><span class="dot bg-blue d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Actors</span>
                      <hr><small class="text-muted">Tổng Số Diễn Viên</small>
                    </div>
                    <div class="col-lg-7">
                      <canvas id="pieChartHome2"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6 mb-4 mb-lg-0 pl-lg-0">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row align-items-center flex-row">
                    <div class="col-lg-5">
                      <h2 class="mb-0 d-flex align-items-center"><span>${countlog}</span><span class="dot bg-red d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Admin Activity</span>
                      <hr><small class="text-muted">Total Admin Activity</small>
                    </div>
                    <div class="col-lg-7">
                      <canvas id="pieChartHome3"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-body">
                  <div class="row align-items-center flex-row">
                    <div class="col-lg-5">
                      <h2 class="mb-0 d-flex align-items-center"><span>${countdirectors }</span><span class="dot bg-green d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Directors</span>
                      <hr><small class="text-muted">Tổng Số Đạo Diễn</small>
                    </div>
                    <div class="col-lg-7">
                      <canvas id="pieChartHome4"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
        
        </section>
      
         
        </section>
        <section class="py-5">
          <div class="row">
          <h3>Top Active Admins</h3>
          <c:set var = "top" value = "0"/>
          <c:forEach items="${ listtop3user}" var="e">
				<c:url var="deleteLink" value="/manager/deleteUser">
					<c:param name="userId" value="${e.id_user}"/>
				</c:url>
				<c:url var="updateLink" value="/manager/editUser">
					<c:param name="userId" value="${e.id_user}"/>
				</c:url>
				
		            <div class="col-lg-12"><a  class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
		                <div class="row">
		                  <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
		                  <strong class="h5 mb-0">${listtop3usertotal[top]}<sup class="smaller text-gray font-weight-normal"> Activity</sup></strong>
		                  <img src="${e.images}" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
		                    <h6 class="mb-0">${e.fullname }</h6>
		                  </div>
		                  <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
		                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Admin Role: ${e.role }
		                    </div>
		                    <p class="mb-0 mt-3 mt-lg-0"><strong>Email:</strong> ${e.email }</p>
<%-- 		                    <p class="mb-0 mt-3 mt-lg-0"><strong>Phone:</strong> ${e.phone }</p> --%>
		                  </div>
		                </div></a>
		                </div>
             <c:set var = "top" value = "${top+1}"/>   
			</c:forEach>
          
          </div>
        </section>
      </div>
      <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6 text-center text-md-left text-primary">
              <p class="mb-2 mb-md-0">Your company &copy; 2018-2020</p>
            </div>
            <div class="col-md-6 text-center text-md-right text-gray-400">
              <p class="mb-0">Design by <a href="https://bootstrapious.com/admin-templates" class="external text-gray-400">Bootstrapious</a></p>
              <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <script type="text/javascript">
  (function() {
	    document.getElementById("adminhomeactive").className += " active";
		})();
  </script>
  <!-- JavaScript files-->
  <%@ include file="scriptAdmin.jsp" %>  
</html>