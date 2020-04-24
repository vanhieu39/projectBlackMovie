<%@ include file="addtag.jsp" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="addhead.jsp" %>  
	<title>Danh sách phim</title>
</head>
<body>

	<header>
        <%@ include file="addMenu.jsp" %>		
    </header>
    <!-- End menu -->
    <!-- End header -->


    <div class="container">
        <div class="head-panding">
            <a href=""><i class="fas fa-home"></i>Xem phim  ></a>
            <a href="">Phim lẻ </a>
            <i>>${movie.name_film}</i>
        </div>
        <div class="content">
            <div class="main col-12 col-sm-12 col-md-12 col-lg-9">
                <section id="chitietphim2212" >              
                    <div class="main-detail">
                        <div class="detail-img">
                            <img src="${images}/${movie.image}" alt="">
                            <div class="img-control">
                                <!-- Watch movie get ID -->		                        	                                 	
                                <c:if test="${serialId != 0 }">
                                    <c:url var="watchlink" value="../watch/watch-series">
                                        <c:param name="movieId" value="${movie.id_film}" />
                                        <c:param name="serialId" value="${serialId}" />
                                    </c:url>
                                    
                            </c:if>
                            
                            <c:if test="${serialId == null }">	
                                    <c:url var="watchlink" value="../watch/watch-movie">
                                    <c:param name="movieId" value="${movie.id_film}" />
                                    </c:url>								
                            </c:if>
                                  <button class="btn-play" onclick="status2212()"><i class="fas fa-play"></i>Xem phim</button>
                                  <button class="btn-trailer" onclick="statustrailer2212()"><i class="fas fa-file-video"></i>Trailer</button>
                            </div>
                        </div>
                        <!-- End detail-img -->

                        <div class="detail-content">
                            <h2 class="content-name">${movie.name_film}</h2>
                            <h3 class="content-name">${movie.name_film}</h3>
                            <div class="content-main">
                                <ul>
                                    <li>
                                        Chất lượng:
                                        <i class="detail-quality">${movie.quality}</i>
                                    </li>
                                    <li>
                                        Ngôn ngữ:
                                        <i class="detail-language">Vietsub HD                                                                     
                                        </i>
                                    </li>
                                    <li>
                                        Thời gian:
                                        <i class="detail-time">${movie.time} phút</i>
                                    </li>
                                    <li>
                                        Thể loại:
                                        <c:forEach items="${fkgenres}" var="fkgen">
                                        <i class="detail-category">${fkgen.genre_name} ;</i>
                                        </c:forEach>                                
                                    </li>
                                    <li>
                                        Quốc gia:
                                        <c:forEach items="${fkcountries}" var="fkcoun">
                                        <i class="detail-nation">${fkcoun.country_name} ;</i>
                                        </c:forEach>
                                        
                                    </li>
                                    <li>
                                        Đạo diễn:
                                        <i class="detail-author">${movie.list_author}</i>
                                    </li>
                                    <li>
                                        Diễn viên:                                    
                                        <c:forEach items="${actors}" var="act">
                                        <i class="detail-actor">${act.fullname} ;</i>
                                        </c:forEach>
                                    <li>
                                        Năm phát hành:
                                        <i class="detail-year">${year}</i>
                                    </li>
                                </ul>
                            </div>

                            <div class="content-rate">
                                <div class="rate-star">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <div class="rate-average">
                                    (1231 votes)
                                </div>
                            </div>
                            <!-- End content-rate -->
                        </div>
                        <!-- End detail-content -->
                    </div>
                </section>
                <section id="xemphim2212" style="display: none">
                      <div id="lightsVideo">
                             <video width="95%" height="auto" controls>
                                     <source src="${movie.link_film}" type="video/mp4">
                                     <source src="${movie.link_film}" type="video/webm">
                              </video>
                      </div>
                     <!-- <div id="switch"><a class="lightSwitcher" href="javascript:void(0);">Tắt đèn</a></div> -->
                </section>
                <section id="xemtrailer2212" style="display: none">
                	<h2>Trailer</h2>
                      <div id="lightsVideo">
                      		${movie.link_trailer}
                      </div>
                     <!-- <div id="switch"><a class="lightSwitcher" href="javascript:void(0);">Tắt đèn</a></div> -->
                </section>
                <br><br>
                <!-- End main-detail -->

                <div class="main-content">
                    <h1><i class="fas fa-book"></i>NỘI DUNG PHIM</h1>
                    <hr>
                    <div class="main-content-content">
                        <img src="${images}/item-img/${movie.image_detail1}" alt="${movie.image_detail1}">
                        <p>                           
                            ${movie.description}
                        </p>
                        <img src="${images}/item-img/${movie.image_detail2}" alt="${movie.image_detail2}">
                    </div>
                </div>
                <!-- End main-content --> 

                <div class="main-key_word">
                    <h1>
                        <i class="fas fa-key"></i>TỪ KHÓA
                    </h1>
                    <hr>
                    <div class="key_word-content">
                       ${movie.keyword}
                    </div>
                </div>
                <!-- End main-key_work -->

                <div class="main-comment">
                    <h1>
                        <i class="fas fa-comments"></i>BÌNH LUẬN
                    </h1>
                <!-- facebook-comment -->
                <%@ include file="addFacebookComment.jsp" %>
                <!-- End facebook-comment -->
                    <hr>
                   
                </div>
                <!-- End main-comment -->

                <div class="main-want-watch">
                    <h1>
                        <i class="fas fa-film"></i>CÓ THỂ BẠN MUỐN XEM
                    </h1>
                    <hr>
                    <div class="row want-watch">                   		 
                   		<c:forEach items="${suggests}" var="m">	       		
						<%-- <c:url var="detailLink" value="/movie/showMovieDetailMovie">
							<c:param name="movieId" value="${movie.id_film}" />
						</c:url> --%>
						<div class="item col-6 col-sm-6 col-md-3 col-lg-3 grid-system">
                            <div class="title">
                                <h3>${m.quality}Vietsub</h3>
                            </div>
                            <img src="${images}/${m.image}" alt="">
                            <div class="status">
                                <h4 class="name-VN">${m.name_film}</h4>
                                <h4 class="name-En">${m.name_film}</h4>
                                <h4 class="time">${m.time} phút</h4>
                            </div>
                        </div>	          	 		          	
			           </c:forEach> 
                        
                     
                    </div>
                    
                </div>
                <!-- End main-want-watch -->
            </div>
            <!-- End main -->

            <div class="aside col-0 col-sm-0 col-md-0 col-lg-3">
                <div class="aside-trailer">                    
                    <jsp:include page="addAside.jsp"></jsp:include>                    
                    <!-- End item-aside-phim-le -->
                </div>
                <!-- End aside-trailer -->
            </div>
            <!-- End aside -->
        <!-- </div> -->
        <!-- end content  -->
    </div>
    <!-- End container -->
    </div>

    <!-- footer -->
    <footer>
        <%@ include file="addFooter.jsp" %>  
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
	<script src="<c:url value="/resources/js/watchmovie.js" />"></script>
<!-- face book comment script -->
  <script type="text/javascript">
  (function() {
	    console.log(location.href);
	    document.getElementById('fb-comments').setAttribute('data-href', location.href);
		})();
  </script>


</body>
</html>
