<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<%@ include file="addhead.jsp" %>
	<title>BLACK MOVIE</title>

	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://kit.fontawesome.com/cef85ddd7b.js" ></script>
	<link rel="stylesheet" type="text/css"
		href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.0/slick/slick.css" />
	<link rel="stylesheet" type="text/css"
		href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.0/slick/slick-theme.css" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<c:url value="/resources/images" var="images" />
	 

</head>
<body>
	<header>
		<%@ include file="addMenu.jsp" %>
		
	</header>
	<!-- menu -->
	<!-- end menu -->


	<!-- carousel SlideShow 8-->
	<section class="container text-center">
		<div class="row col-">
			<div id="aaa" style="width: 100%; margin-top: 70px; height: auto">				
				<c:forEach items="${slideShow8}" var="slide_8">					          	
	          		<c:url var="detail" value="/movie/showMovieDetailMovie">
						<c:param name="movieId" value="${slide_8.id_film}" />
					</c:url>								
					<a href="${detail}"><img clas="mr-2" src="${images}/${slide_8.image}" alt="" /></a>	 							          			             
          	    </c:forEach>	
			</div>
		</div>
	</section>
	<!-- end carousel SlideShow 8-->

		<section class="section-2">
		<div class="container phim-le">
		<a href="movie/movies-cinemax?page=1"><h1><i class="fas fa-film"></i> PHIM CHIẾU RẠP <i class="fas fa-caret-right"></i></h1></a>
			<hr>
			<div class="row phim-le-01">
				<div class="col-12 col-sm-12 col-md-12 col-lg-10">
					<div class="row">
						<!-- section1_8 Cinemax-->
						 <c:forEach items="${section1_8}" var="s18">					          	
				          		<c:url var="detail" value="/movie/showMovieDetailMovie">
									<c:param name="movieId" value="${s18.id_film}" />
								</c:url>								
								<div class="col-6 col-sm-6 col-md-3 col-lg-3">
									<div class="item">
										<div class="title">											
											<h3>${s18.quality}</h3>
										</div>										
										<a href="${detail}"><img src="${images}/${s18.image}" alt="${url}/${movie2.image}"></a> 
										<div class="status">
											<h4 class="name-VN">${s18.name_film}</h4>
											<h4 class="name-En">${s18.name_film}</h4>
											<h4 class="time">${s18.time} phút.</ h4>
										</div>
									</div>
								</div>					          			             
			           	  </c:forEach>		           
						
					<!-- End PHIM LẺ MỚI 2 -->
				</div>
				<!-- End PHIM LẺ MỚI -->		
			</div>
			
			<div class="scroll col-0 col-sm-0 col-md-0 col-lg-2">
					<div class="title-scroll">
						<h1>
							<i class="fas fa-film"></i> TRAILER 
						</h1>
						<hr>
					</div>
					<!-- Section 2 TRAILER 8-->
					<c:forEach items="${section1_trailer8}" var="s1t8">					          	
	          			<c:url var="detail" value="/movie/showMovieDetailMovie">
							<c:param name="movieId" value="${s1t8.id_film}" />
						</c:url>								
					<div class="item-scroll right-col">
						<div class="title">
							<h3>Trailer</h3>
						</div>
							<a href="${detail}"><img src="${images}/${s1t8.image}" alt="" /></a>							
						<div class="status">
							<h4 class="name-VN">${s1t8.name_film}</h4>
							<h4 class="name-En">${s1t8.name_film}</h4>
						</div>
					</div>											          			             
          	    	</c:forEach>
					
				</div>
				<!-- End SCROLL DOWN -->
			</div>
		</div>
	</section>
	<!-- End Section-2 -->


	<section class="section-3">
		<div class="container phim-bo">
			<a href="movie/movies-short?page=1"><h1><i class="fas fa-film"></i> PHIM LẺ MỚI <i class="fas fa-caret-right"></i></h1></a>
			<hr>
			<div class="row phim-bo-total">
				<div class="row phim-bo col-xs-12 col-sm-12 col-md-12 col-lg-9 grid-system">
					 <!-- Section 2 Short 12-->	
					 <c:forEach items="${section2_12}" var="s212" >	
								<c:url var="detail" value="/movie/showMovieDetailMovie">
								<c:param name="movieId" value="${s212.id_film}" />
								</c:url>				          					          									
								<div class="item col-xs-4 col-sm-4 col-md-3 grid-system">
									<div class="title">										
										<h3>${s212.quality}</h3>
									</div>
									<a href="${detail}"><img src="${images}/${s212.image}" alt="${images}/${s212.image}"></a>
									<div class="status">
										<h4 class="name-VN">${s212.name_film}</h4>
										<h4 class="name-En">${s212.name_film}</h4>
										<h4 class="time">${s212.time} phút</h4>
									</div>
								</div>			          			             
	           	    </c:forEach>	
			
				</div>
				<!-- End phim-le -->

			<div class="col-xs-12 col-sm-12 col-md-3 aside grid-system">
					<jsp:include page="addAside.jsp"></jsp:include>
			</div>
			<!-- End aside -->
		</div>
		<!-- End phim-bo-total -->
		</div>
		<!-- End PHIM BỘ MỚI -->
	</section>
	<!-- End Section-3 -->
	

	<section class="section-4">
		<div class="container phim-bo">
			<a href="serial/series-allpaginate"><h1><i class="fas fa-film"></i> PHIM BỘ MỚI <i class="fas fa-caret-right"></i></h1></a>			
			<hr>
			<div class="row phim-bo-total">
				<!-- phim-bo 4x3 Row -->
				<div class="row phim-bo col-xs-12 col-sm-12 col-md-9 grid-system">
					
					<c:forEach items="${section3_12}" var="s312" >	
						<c:url var="detail" value="/movie/showMovieDetailSeries">						
						<c:param name="movieId" value="${s312.fk_movieid}" />
						<c:param name="serialId" value="${s312.id}"  />
						</c:url>																				          		          							     												
							<div class="item col-xs-4 col-sm-4 col-md-3 grid-system">
								<div class="title">
									<h3>${s312.status}/${s312.totals_movie}</h3>
								</div>								
								<a href="${detail}" ><img src="${images}/${s312.image}" alt=""></a>
								<div class="status">
									<h4 class="name-VN">${s312.name_film}</h4>
									<h4 class="name-En">${s312.name_film}</h4>
									<h4 class="time">${s312.time} Phút</h4>
								</div> 
							</div>		          			             
	           	    </c:forEach> 
	           	    
				</div>
				<!-- End phim-bo -->

				<div class="col-xs-12 col-sm-12 col-md-3 aside-key grid-system">
					<div class="title-aside-key">						
						<h1>
							<i class="fas fa-film"></i> TÌM KIẾM
						</h1>
						<hr>
						<div class="title-aside-key-topic">							
							<!-- Section4 Keyword -->
							<c:forEach items="${keywords}" var="keyword" >	
							<c:url var="keywordMovies" value="/movie/keyword">
						     <c:param name="keywordId" value="${keyword.keyword_id}" />
							</c:url>				          			          									
							<a href="${keywordMovies}" class="key-effect">
								<button class="key-word">${keyword.keyword_name}</button>
							</a>          			             
	           	    		</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- End phim-bo-total -->
		</div>
		<!-- End PHIM BỘ MỚI -->
	</section>
	<!-- End Section-4 -->


	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<h1>
						<i class="fas fa-film" aria-hidden="true"></i> BMOVIE
					</h1>
				</div>

				<div class="col-md-4 col-sm-4">
					<h6>
						<i class="fa fa-copyright"></i> Copyright 2019
					</h6>
					<span>Black Entertainment CO.,LTD</span>
				</div>

				<div class="col-md-4 col-sm-4">
					<p>
						Email: contact@bmovie.com <br /> 89 Trần Văn Dư, quận Tân Bình,
						TP.HCM
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
