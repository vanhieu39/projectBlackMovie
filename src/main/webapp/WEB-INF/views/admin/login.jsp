<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Admin Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->	
<%--     	<link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/images/icons/favicon.ico' />"/> --%>
        <link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/images/icons/favicon.ico' />"/>
    <!--===============================================================================================-->
<%--     <link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />"/> --%>
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/adminlogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />">
    <!--===============================================================================================-->
<%--     <link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/fonts/iconic/css/material-design-iconic-font.min.css' />"/> --%>
<%--     <link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/css/util.css' />"/> --%>
<%--     <link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/css/main.css' />"/> --%>
<%--     <link rel="icon" type="image/png" href="<c:url value='/resources/adminlogin/css/mycss.css' />"/> --%>
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/adminlogin/fonts/iconic/css/material-design-iconic-font.min.css' />">
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/adminlogin/css/util.css' />">
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/adminlogin/css/main.css' />">
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/adminlogin/css/mycss.css' />">
    <!--===============================================================================================-->
    </head>
    <body>
            <video id="video_background" preload="auto" autoplay="true" loop="loop" muted volume="0">
                    <source src="<c:url value='/resources/adminlogin/video/video1.webm' />" type="video/webm"/>
            </video>
    
        <div class="limiter">
            <div class="container-login100" >
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                    <form class="login100-form validate-form" name='loginForm' action="<c:url value='/manager/j_spring_security_login' />" method='POST' >
                        <span class="login100-form-title p-b-49">
                            Admin Login
                        </span>
    					
	                        <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
	                            <span class="label-input100">Username</span>
	                            <input class="input100" type="text" name="username" placeholder="Type your username">
	                            <span class="focus-input100" data-symbol="&#xf206;"></span>
	                        </div>
	    
	                        <div class="wrap-input100 validate-input" data-validate="Password is required">
	                            <span class="label-input100">Password</span>
	                            <input class="input100" type="password" name="password" placeholder="Type your password">
	                            <span class="focus-input100" data-symbol="&#xf190;"></span>
	                        </div>
	                        
	                        <div class="text-right p-t-8 p-b-31">
	                            <p style="color: red;">${erromes }</p>
	                        </div>
	                        
	                        <div class="container-login100-form-btn">
	                            <div class="wrap-login100-form-btn">
	                                <div class="login100-form-bgbtn"></div>
	                                <button class="login100-form-btn" type="submit">
	                                    Login
	                                </button>
	                            </div>
	            
	                        </div>
   						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
   						
                    </form>
                </div>
            </div>
        </div>
        
    
        <div id="dropDownSelect1"></div>
        <!--===============================================================================================-->
	<script src="<c:url value='/resources/adminlogin/vendor/jquery/jquery-3.2.1.min.js' />"></script>
<!--===============================================================================================-->
	<!-- <script src="vendor/animsition/js/animsition.min.js"></script> -->
<!--===============================================================================================-->
	<!-- <script src="vendor/bootstrap/js/popper.js"></script> -->
	<!-- <script src="vendor/bootstrap/js/bootstrap.min.js"></script> -->
<!--===============================================================================================-->
	<!-- <script src="vendor/select2/select2.min.js"></script> -->
<!--===============================================================================================-->
	<!-- <script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script> -->
<!--===============================================================================================-->
	<!-- <script src="vendor/countdowntime/countdowntime.js"></script> -->
<!--===============================================================================================-->
	<script src="<c:url value='/resources/adminlogin/js/main.js' />"></script>
    </body>
    </html>