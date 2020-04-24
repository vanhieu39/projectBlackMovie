<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- begin fabook longin script -->
	<%@ include file="addFacebookScript.jsp" %>
<!-- end fabook longin script -->

<div class="head100">
    <div class="menu1">
        <div class="menu1-1">
            <h1>
                <a href="<c:url value="/" />"><i class="fas fa-film" aria-hidden="true">BMOVIE</i></a>
            </h1>
        </div>

        <div class="menu1-2">
					<ul class="menuhead">
						<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Phim Lẻ
                        	</a>
                        	<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				            	 <c:forEach begin="2012" end="2019" var="year" >     
				            	  	<div>
				            			<a class="dropdown-item" href="${pageContext.request.contextPath}/movie/moviesYear?year=${year}">Phim Lẻ ${year}</a>                            			
				            		</div>                   
				                 </c:forEach>                  
			                </div>                          
                        </li>
                        
                        <li class="nav-item dropdown">
                        	
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Phim Bộ
                        	</a>                        
                        	<div class="dropdown-menu" aria-labelledby="navbarDropdown">                        		 
				            	 <c:forEach items="${countries}" var="co">     
				            	  	<div>
				            			<a class="dropdown-item" href="${pageContext.request.contextPath}/movie/country?countryId=${co.country_id}">Phim Bộ ${co.country_name}</a>                       			
				            		</div>                                                                                        
				                 </c:forEach>                              
			                </div>                          
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Thể Loại
                        	</a>
                        	<div class="dropdown-menu" aria-labelledby="navbarDropdown">                        		 
				            	 <c:forEach items="${genres}" var="gen">     
				            	  	<div>
				            			<a class="dropdown-item" href="${pageContext.request.contextPath}/movie/category?categoryId=${gen.genre_id}">Phim ${gen.genre_name}</a>                       			
				            		</div>                                                                                        
				                 </c:forEach>                              
			                </div>                          
                        </li>
                        
						<!-- <li class="nav-item">
							
							<a href="#" class="nav-link"> Phim
								Chiếu Rạp </a></li> -->
						<li class="nav-item"><a href="#" class="nav-link"> Lọc
								phim </a></li>
					</ul>
				</div>

        <div class="col-sm-1 col-md-1 menuBar">
            <div class="dropdown">
                <button class="btn btn-secondary" data-toggle="dropdown">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="dropdown-menu">
                    <a href="" class="dropdown-item">Phim Lẻ</a>
                    <div class="dropdown-divider"></div>
                    <a href="" class="dropdown-item">Phim Bộ</a>
                    <div class="dropdown-divider"></div>
                    <a href="" class="dropdown-item">Phim Chiếu Rạp</a>
                </div>
                <div class="dropdown-divider">
                    <a href="" class="dropdown-item">Lọc phim</a>
                </div>
            </div>
            <!-- end dropdown -->
        </div>

        <div class="menu1-1">
            <div class="input-group">
                <form action="movie/searchMovies">
                    <input type="search" name="name" id="name" class="form-control" placeholder="Tìm kiếm" required>
                    <div class="input-group-append">
                        <button id="search" type="submit" onclick="search()"><span class="input-group-text"> <i
                                    class="fas fa-search" aria-hidden="true"></i>
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <div class="menu1-1">
            <button class="open-button" onclick="openForm()">
                <i class="fas fa-user" aria-hidden="true"></i>
            </button>
<!-- onmouseleave="closeForm()" -->
            <div class="form-popup" id="myForm">
                <form action="#" class="form-container">
					<h2 id="titlehello">Login</h2>
					<img id="facebookpic" src="" style="display: none;" />
					<br/><p id="facebookname" style="display: none;"></p>
					<p id="facebookid" style="display: none;"></p>
					<p id="facebookemail" style="display: none;"></p>
					
					
					<input id="loginlocalemail" type="text" placeholder="Enter Email" name="email" required="">
					<input id="loginlocalpsw" type="password" placeholder="Enter Password" name="psw" required="">
					<button id="loginlocalbtn" type="submit" class="btn">Login</button>
					<!-- nút facebook -->
					<div id="fb-login-button" class="fb-login-button btn" data-width="100%" data-size="large" data-button-type="login_with"
					data-auto-logout-link="false" data-use-continue-as="true" scope="public_profile,email"
					onlogin="checkLoginState();" style="background-color: #4692f5;" ></div>
					<!-- End nút facebook -->	
                    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
                </form>
            </div>
        </div>
    </div>
</div>

