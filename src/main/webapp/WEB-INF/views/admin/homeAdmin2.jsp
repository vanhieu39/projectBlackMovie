<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
        href="index.html" class="navbar-brand font-weight-bold text-uppercase text-base">Bubbly Dashboard</a>
      <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
        <li class="nav-item">
          <form id="searchForm" class="ml-auto d-none d-lg-block">
            <div class="form-group position-relative mb-0">
              <button type="submit" style="top: -3px; left: 0;" class="position-absolute bg-white border-0 p-0"><i
                  class="o-search-magnify-1 text-gray text-lg"></i></button>
              <input type="search" placeholder="Search ..."
                class="form-control form-control-sm border-0 no-shadow pl-4">
            </div>
          </form>
        </li>
        <li class="nav-item dropdown mr-3"><a id="notifications" href="http://example.com" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle text-gray-400 px-1"><i
              class="fa fa-bell"></i><span class="notification-icon"></span></a>
          <div aria-labelledby="notifications" class="dropdown-menu"><a href="#" class="dropdown-item">
              <div class="d-flex align-items-center">
                <div class="icon icon-sm bg-violet text-white"><i class="fab fa-twitter"></i></div>
                <div class="text ml-2">
                  <p class="mb-0">You have 2 followers</p>
                </div>
              </div>
            </a><a href="#" class="dropdown-item">
              <div class="d-flex align-items-center">
                <div class="icon icon-sm bg-green text-white"><i class="fas fa-envelope"></i></div>
                <div class="text ml-2">
                  <p class="mb-0">You have 6 new messages</p>
                </div>
              </div>
            </a><a href="#" class="dropdown-item">
              <div class="d-flex align-items-center">
                <div class="icon icon-sm bg-blue text-white"><i class="fas fa-upload"></i></div>
                <div class="text ml-2">
                  <p class="mb-0">Server rebooted</p>
                </div>
              </div>
            </a><a href="#" class="dropdown-item">
              <div class="d-flex align-items-center">
                <div class="icon icon-sm bg-violet text-white"><i class="fab fa-twitter"></i></div>
                <div class="text ml-2">
                  <p class="mb-0">You have 2 followers</p>
                </div>
              </div>
            </a>
            <div class="dropdown-divider"></div><a href="#" class="dropdown-item text-center"><small
                class="font-weight-bold headings-font-family text-uppercase">View all notifications</small></a>
          </div>
        </li>
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
          <div class="row">
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
              <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between user-manage-btn">
                <div class="flex-grow-1 d-flex align-items-center">
                  <div class="dot mr-3 bg-violet"></div>
                  <div class="text">
                    <h6 class="mb-0">Quản lý User</h6><span class="text-gray"></span>
                  </div>
                </div>
                <div class="icon text-white bg-violet"><i class="fas fa-server"></i></div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
              <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between movie-manage-btn">
                <div class="flex-grow-1 d-flex align-items-center">
                  <div class="dot mr-3 bg-green"></div>
                  <div class="text">
                    <h6 class="mb-0">Quản lý phim</h6><span class="text-gray"></span>
                  </div>
                </div>
                <div class="icon text-white bg-green"><i class="far fa-clipboard"></i></div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
              <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between adv-manage-btn">
                <div class="flex-grow-1 d-flex align-items-center">
                  <div class="dot mr-3 bg-blue"></div>
                  <div class="text">
                    <h6 class="mb-0">Quản lý quảng cáo</h6><span class="text-gray"></span>
                  </div>
                </div>
                <div class="icon text-white bg-blue"><i class="fa fa-dolly-flatbed"></i></div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
              <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between other-manage-btn">
                <div class="flex-grow-1 d-flex align-items-center">
                  <div class="dot mr-3 bg-red"></div>
                  <div class="text">
                    <h6 class="mb-0">Quản lý chức năng khác</h6><span class="text-gray"></span>
                  </div>
                </div>
                <div class="icon text-white bg-red"><i class="fas fa-receipt"></i></div>
              </div>
            </div>
          </div>
        </section>

        <section>
          <p class="user-manage-p hidden-class">
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#user-multiCollapseExample1"
              aria-expanded="false" aria-controls="multiCollapseExample1">Add User</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#user-multiCollapseExample2"
              aria-expanded="false" aria-controls="multiCollapseExample2">Remove User</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#user-multiCollapseExample3"
              aria-expanded="false" aria-controls="multiCollapseExample3">Edit User</button>
            <!-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Toggle both elements</button> -->
          </p>

          <div class="user-manage-detail">
            <div class="col">
              <div class="collapse multi-collapse" id="user-multiCollapseExample1">
                <div class="card card-body">
                  Add User
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="user-multiCollapseExample2">
                <div class="card card-body">
                  Remove User
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="user-multiCollapseExample3">
                <div class="card card-body">
                  Edit User
                </div>
              </div>
            </div>
          </div>
        </section>

        <section>
          <p class="movie-manage-p hidden-class">
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#movie-multiCollapseExample1"
              aria-expanded="false" aria-controls="multiCollapseExample1">Add Movie</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#movie-multiCollapseExample2"
              aria-expanded="false" aria-controls="multiCollapseExample2">Remove Movie</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#movie-multiCollapseExample3"
              aria-expanded="false" aria-controls="multiCollapseExample3">Edit Movie</button>
            <!-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Toggle both elements</button> -->
          </p>

          <div class="movie-manage-detail">
            <div class="col">
              <div class="collapse multi-collapse" id="movie-multiCollapseExample1">
                <div class="card card-body">
                  Add Movie
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="movie-multiCollapseExample2">
                <div class="card card-body">
                  Remove Movie
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="movie-multiCollapseExample3">
                <div class="card card-body">
                  Edit Movie
                </div>
              </div>
            </div>
          </div>
        </section>

        <section>
          <p class="adv-manage-p hidden-class">
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#adv-multiCollapseExample1"
              aria-expanded="false" aria-controls="multiCollapseExample1">Add Adv</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#adv-multiCollapseExample2"
              aria-expanded="false" aria-controls="multiCollapseExample2">Remove Adv</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#adv-multiCollapseExample3"
              aria-expanded="false" aria-controls="multiCollapseExample3">Edit Adv</button>
            <!-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Toggle both elements</button> -->
          </p>

          <div class="adv-manage-detail">
            <div class="col">
              <div class="collapse multi-collapse" id="adv-multiCollapseExample1">
                <div class="card card-body">
                  Add Adv
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="adv-multiCollapseExample2">
                <div class="card card-body">
                  Remove Adv
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="adv-multiCollapseExample3">
                <div class="card card-body">
                  Edit Adv
                </div>
              </div>
            </div>
          </div>
        </section>

        <section>
          <p class="other-manage-p hidden-class">
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#other-multiCollapseExample1"
              aria-expanded="false" aria-controls="multiCollapseExample1">Add Other func</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#other-multiCollapseExample2"
              aria-expanded="false" aria-controls="multiCollapseExample2">Remove Other func</button>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#other-multiCollapseExample3"
              aria-expanded="false" aria-controls="multiCollapseExample3">Edit Other func</button>
            <!-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Toggle both elements</button> -->
          </p>

          <div class="other-manage-detail">
            <div class="col">
              <div class="collapse multi-collapse" id="other-multiCollapseExample1">
                <div class="card card-body">
                  Add Other func
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="other-multiCollapseExample2">
                <div class="card card-body">
                  Remove Other func
                </div>
              </div>
            </div>
            <div class="col">
              <div class="collapse multi-collapse" id="other-multiCollapseExample3">
                <div class="card card-body">
                  Edit Other func
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>

      <section>
        <div class="col-lg-12">
          <h1>List User</h1>
	<button onclick="window.location.href='showFormAddUser.html'">Add User</button>
	<div> 
		<table border="1">
			<tr>
				<th>UserName</th>
				<th>Password</th>
				<th>Role</th>
				<th>Fullname</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>Birthday</th>
				<th>Date Register</th>
				<th>Is Enable</th>
				<th>Update date</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${ listuser}" var="e">
				<c:url var="deleteLink" value="/deleteUser">
					<c:param name="userId" value="${e.id_user}"/>
				</c:url>
				<c:url var="updateLink" value="/editUser">
					<c:param name="userId" value="${e.id_user}"/>
				</c:url>
				<tr>
					<td>${e.username }</td>
					<td>${e.password }</td>
					<td>${e.role }</td>
					<td>${e.fullname }</td>
					<td>${e.email }</td>
					<td>${e.phone }</td>
					<td>${e.gender }</td>
					<fmt:parseDate value="${e.birthday }" var="varBirthday" pattern="yyyy-MM-dd"/>
					<td> <fmt:formatDate pattern="dd-MM-yyyy" value="${varBirthday }" /></td>
					<fmt:parseDate value="${e.date_register }" var="varDateRegister" pattern="yyyy-MM-dd"/>
					<td><fmt:formatDate pattern="dd-MM-yyyy" value="${varDateRegister }" /></td>
					<td>${e.is_enable }</td>
					<fmt:parseDate value="${e.updatedate }" var="varUpdate" pattern="yyyy-MM-dd"/>
					<td><fmt:formatDate pattern="dd-MM-yyyy" value="${varUpdate }" /></td>
	
					<td><a href="${updateLink }">Update</a> | 
					<a href="${ deleteLink}" onclick="if(!confirm('Are you sure want to delete this Employee permanently')) return false">Delete</a> </td>
				</tr>
			</c:forEach>
		</table>
	</div>        
	</div>
      </section>

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
</html>