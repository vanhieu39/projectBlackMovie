<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../addtag.jsp" %>  

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
<!-- bắt đầu form nhập thông tin -->
         <section class="py-5">
            <div class="row">
              <!-- Form Elements -->
              <div class="col-lg-12 mb-5">
                <div class="card">
                  <div class="card-header">
                    <h3 class="h6 text-uppercase mb-0">ACTOR INFORMATION</h3>
                  </div>
                  <div class="card-body">
                    <s:form class="form-horizontal" method="POST" action="saveActor" enctype="multipart/form-data" modelAttribute="actor">
                    <s:hidden path="id_actor" />
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Full Name</label>
                        <div class="col-md-9">
                          <s:input path="fullname" type="text" class="form-control" />
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Gender</label>
                        <div class="col-md-2 select mb-3">
                          <s:select path="gender" class="form-control">
                            <s:option value="0">Female</s:option>
							<s:option value="1">Male</s:option>
							<s:option value="2">Bi</s:option>
                          </s:select>
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Birthday</label>
                        <div class="col-md-2">
	                        <c:if test = "${actor.birthday == null}">
	                          <s:input path="birthday" type="date" value="1990-12-31" class="form-control" />
						    </c:if>
	                        <c:if test = "${actor.birthday != null}">
	                          <s:input path="birthday" type="date" class="form-control" />
						    </c:if>
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Nation</label>
                        <div class="col-md-9">
                          <s:input path="nation" type="text" class="form-control" />
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">Images</label>
                        <div class="col-md-9" style="display: flex;">
                          <s:hidden path="images" />
                        	<input type="file" name="multipartFile" accept="image/gif, image/jpeg, image/png" /><br />
                          <c:if test = "${not empty actor.images}">
                         		<span>Old Images: <a href="${actor.images}">${actor.images}</a> </span>
						   </c:if>
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-md-3 form-control-label">View</label>
                        <div class="col-md-9">
                          <s:input path="view" type="text" class="form-control" />
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <div class="col-md-9 ml-auto">
                          <button type="button" class="btn btn-secondary" onclick="if(confirm('Are you sure want to Cancel?')) window.location.href='<c:url value="/manager/actor"/>'">Cancel</button>
                          <button type="submit" class="btn btn-primary">Save Changes</button>
                      
                        </div>
                      </div>
                    </s:form>
<!--                     </form> -->
                  </div>
                </div>
              </div>
            </div>
          </section>
<!-- Kết thúc form nhập thông tin -->
      </div>

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
</html>