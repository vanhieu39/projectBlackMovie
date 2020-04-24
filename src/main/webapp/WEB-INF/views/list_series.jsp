<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="addhead.jsp" %>  
	<link href="<c:url value="/resources/css/index-phim.css" />" rel="stylesheet">
	<title>Danh sách phim</title>
	<%-- <c:url value="/resources/images" var="images" /> --%>
</head>
<body>
	<header>
        <%@ include file="addMenu.jsp" %>		
    </header>
    <!-- End menu -->
    <!-- End header -->
    
     			<c:if test="${list_series.size() != 0}" >
                	<c:url var="linkMessage" value="/movie/showMovieDetailMovie">
						<c:param name="movieId" value="${movie.id_film}" />
					</c:url>
		            <c:set var="type2" value="Phim Bộ"></c:set>
                </c:if>
                <%--
                <c:if test="${series == ''}" >
                	<c:url var="linkMessage" value="/movie/showMovieDetailMovie">
						<c:param name="movieId" value="${movie.id_film}" />
					</c:url>
		            <c:set var="type2" value="Phim Lẻ"></c:set>			
				</c:if> --%>

	<div class="container">
        <div class="head-panding">
            <a href="redirect:/"><i class="fas fa-home"></i>Xem phim  ></a>
            <a href="movie/movies-short?page=1">${type2} ></a>
            <i>${message}</i>           
        </div>
        <div class="content">
            <!-- phim-bo 4x3 Row -->
				<div class="row phim-bo col-xs-12 col-sm-12 col-md-9 grid-system">
					
					<c:forEach items="${list_series}" var="s312" >	
						<c:url var="detail" value="/movie/showMovieDetailSeries">						
						<c:param name="movieId" value="${s312.fk_movieid}" />
						<c:param name="serialId" value="${s312.id}"  />	
						</c:url>
						<%-- <c:url var="detail" value="/watch/watch-series">						
						<c:param name="movieId" value="${s312.fk_movieid}" />
						<c:param name="serialId" value="${s312.id}"  />	
						</c:url> --%>														          		          							     												
							<div class="item col-xs-4 col-sm-4 col-md-3 grid-system">
								<div class="title">
									<h3>${s312.status}/${s312.totals_movie}</h3>
								</div>								
								<a href="${detail}" ><img src="${images}/${s312.image}" alt=""></a>
								<div class="status">
									<h4 class="name-VN">${s312.name_film}</h4>
									<h4 class="name-En">${s312.name_film}</h4>
									<h4 class="time">${s312.time} Phut</h4>
								</div> 
							</div>		          			             
	           	    </c:forEach> 
	           	    
				</div>
			<!-- End phim-bo -->
                	
            <!-- End main -->

            <div class="aside col-0 col-sm-0 col-md-0 col-lg-3">
                <div class="aside-trailer">
                    <div class="title-aside">
                        <h1 class="title-aside-title index-item">
                            <i class="fas fa-film"></i> PHIM XEM NHIỀU
                        </h1>
                        <hr>
                        <div class="title-aside-topic index-item">
                            <button class="wrap-btn-01 active">
                                PHIM LẺ
                            </button>
                            <button class="wrap-btn-02">
                                PHIM BỘ
                            </button>
                        </div>
                    </div>

                    <!-- item-aside-phim-bo 7-->
                    <div class="item-aside-phim-bo hide">
                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0024.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                    
                    </div>
                    <!-- End item-aside-phim-bo -->

                    <!-- item-aside-phim-le 7-->
                    <div class="item-aside-phim-le">
                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0030.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>
                        
                    </div>
                    <!-- End item-aside-phim-le -->
                </div>
                <!-- End aside-trailer -->
            </div>
            <!-- End aside -->
        </div>
        <!-- end content  -->
    	 
    	<!-- Paginate  -->
   		<div class="paginate">
			<nav >
		    <ul class="pagination">	    
		    	<%-- <c:url var="linkPage" value="${link}?">
		    		
		    	</c:url> --%>
		        <c:if test="${page != 1}">
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
         
		    </ul>
			</nav>
		</div>
    	<!-- End Paginate  -->
    <!-- End container -->
    </div>
	  
    <!-- footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <h1> <i class="fas fa-film" aria-hidden="true"></i>BMOVIE</h1>
                </div>

                <div class="col-md-4 col-sm-4">
                    <h6> <i class="fa fa-copyright"></i> Copyright 2019</h6>
                    <span>Black Entertainment CO.,LTD</span>
                </div>

                <div class="col-md-4 col-sm-4">
                    <p>Email: contact@bmovie.com
                        <br />
                        89 Trần Văn Dư, quận Tân Bình, TP.HCM
                    </p>
                </div>
            </div>
        </div>
    </footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="<c:url value="/resources/js/js.js" />"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.0/slick/slick.min.js"></script>
</body>
</html>