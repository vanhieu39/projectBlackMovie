<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/resources/images" var="images" />

					<div class="title-aside">
						<h1>
							<i class="fas fa-film"></i> PHIM XEM NHIỀU
						</h1>
						<hr>
						<div class="title-aside-topic">
							<button class="wrap-btn-01 active">PHIM LẺ</button>
							<button class="wrap-btn-02">PHIM BỘ</button>
						</div>
					</div>
										
					<div class="item-aside-phim-bo hide">
						<!-- Section 2 Trailer SERIES 7-->										
				   		<c:forEach items="${section2_series7}" var="s2ss7" >					   			
								<c:url var="detail" value="/movie/showMovieDetailSeries">						
								<c:param name="movieId" value="${s2ss7.fk_movieid}" />
								<c:param name="serialId" value="${s2ss7.id}"  />	
								</c:url>																				          		          							     												
								 <div class="item-aside">
									<div class="title">
										<h3>${s2ss7.status}/${s2ss7.totals_movie}</h3>
									</div>
									<a href="${detail}"><img src="${images}/${s2ss7.image}" alt=""></a>
									<div class="status">										
										<h4 class="name-VN">${s2ss7.name_film}</h4>
										<h4 class="name-En">${s2ss7.time} Phút</h4>										
									</div> 		
								</div> 									          			             
			           	</c:forEach>
					</div> 

					<div class="item-aside-phim-le">
						<!-- Section 2 View Top SHORT 7--> 
						<c:forEach items="${section2_short7}" var="s2s7" >					          	
				          		<c:url var="detail" value="/movie/showMovieDetailMovie">
								<c:param name="movieId" value="${s2s7.id_film}" />
								</c:url>								
								<div class="item-aside">
									<div class="title">
										<h3>${s2s7.quality}</h3>
									</div>
									<a href="${detail}"><img src="${images}/${s2s7.image}" alt=""></a>									
									<div class="status">
										<h4 class="name-VN">${s2s7.name_film}</h4>
										<h4 class="name-En">${s2s7.name_film}</h4>
									</div>
								</div>			          			             
	           	   		 </c:forEach>
					</div>
				