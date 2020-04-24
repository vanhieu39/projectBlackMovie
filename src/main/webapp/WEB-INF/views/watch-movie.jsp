<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="addhead.jsp" %>

<c:url value="/resources/videos" var="videos" />

<title>watch-movie</title>

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
            <a href="${link}">Back Movie ></a>
            <i>Phim gì đó</i>
        </div>
        <div class="content">
            <div class="main col-12 col-sm-12 col-md-12 col-lg-9">
                    <center>  
                            <div id="lightsVideo">
                                   <video width="95%" height="auto" controls>
                                           <source src="${movie.link_film}" type="video/mp4">
                                           <source src="${movie.link_film}" type="video/webm">
                                    </video>
                            </div>
                           <div id="switch"><a class="lightSwitcher" href="javascript:void(0);">Tắt đèn</a></div>
                               
                    </center>
                <!-- End main-detail -->
                
                <c:if test="${movies.size() == 0}" >
                	<div class="detail-series-title">
                		<h2> Có Thể bạn muốn xem !
                		</h2>
                	</div>
		            <%-- <li class="page-item"><a class="page-link" 
		                href="${link}?page=${page-1}">123456</a>
		            </li> --%>
		        
                </c:if>
                
                <c:if test="${movies.size() != 0}" >
                 <div class="detail-series">
                	<div class="detail-series-title">
                		<h2> Các tập khác
                		</h2>
                	</div>
                	<div class="detail-series-button">
  						<c:forEach items="${movies}" var="m" varStatus="no"> 
  						<c:url var="watchMore" value="watch-series">
  							<c:param name="movieId" value="${m.id_film}"></c:param>
  							<c:param name="serialId" value="${serialId}"></c:param>  							
  						</c:url>
  							<div class="button-series-movie" style="width: 150px; height: 50px;  border: 1px; ">
  								<a class="button-series-movie-detail" href="${watchMore}"><button>
						        	Tập ${no.count}
						    	</button></a> 
  							</div>	  												    	 							
  						</c:forEach>					    
					</div> 
				</div>
				</c:if>

                <div class="main-content">
                    <h1><i class="fas fa-book"></i>NỘI DUNG PHIM</h1>
                    ${videos }/${movie.link_film} Test URL
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
                    <hr>
                    <form action="">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Viết bình luận">
                    </form>
                </div>
                <!-- End main-comment -->

                <div class="main-want-watch">
                    <h1>
                        <i class="fas fa-film"></i>CÓ THỂ BẠN MUỐN XEM
                    </h1>
                    <hr>
                    <div class="row want-watch">
                        <div class="item col-6 col-sm-6 col-md-3 col-lg-3 grid-system">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/Romang.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                                <h4 class="time">120 phút</h4>
                            </div>
                        </div>
                        <div class="item item col-6 col-sm-6 col-md-3 col-lg-3 grid-system">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/Romang.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                                <h4 class="time">120 phút</h4>
                            </div>
                        </div>
                        <div class="item item col-6 col-sm-6 col-md-3 col-lg-3 grid-system">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/Romang.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                                <h4 class="time">120 phút</h4>
                            </div>
                        </div>
                        <div class="item item col-6 col-sm-6 col-md-3 col-lg-3 grid-system">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/Romang.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                                <h4 class="time">120 phút</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End main-want-watch -->
            </div>
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

                    <!-- item-aside-phim-bo -->
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

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0025.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0031.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0027.jpeg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0036.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0029.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo003.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>
                    </div>
                    <!-- End item-aside-phim-bo -->

                    <!-- item-aside-phim-le -->
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

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0031.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0032.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0033.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0034.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0035.jpg" alt="">
                            <div class="status">
                                <h4 class="name-VN">Demo Name</h4>
                                <h4 class="name-En">Demo Name Eng</h4>
                            </div>
                        </div>

                        <div class="item-aside">
                            <div class="title">
                                <h3>HD-Vietsub</h3>
                            </div>
                            <img src="${images}/poster/posterDemo0036.jpg" alt="">
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
        
    </div>
    <!-- End container -->
    
   <!--  </div> -->
     <div id='lightsoff'/>
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

</body>
</html>

