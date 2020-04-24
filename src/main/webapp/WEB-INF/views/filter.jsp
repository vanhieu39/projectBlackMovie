
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Countries</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script type="text/javascript">
    	
    	
    </script>
</head>

<body class="m-3">

<div class="row col-md-6">
    <table class="table table-striped table-bordered table-sm">
        <tr>
        	<th>Id</th>
            <th>Name</th>
            <th>Capital</th>
        </tr>

        <c:forEach items="${list_genre}" var="genre">
            <tr>
            	<td><c:out value="${genre.genre_id}" /></td>
                <td><c:out value="${genre.genre_name}" /></td>    
                <td><c:out value="${genre.is_active}" /></td>                
            </tr>
        </c:forEach>
    </table>
    
</div>
	<fieldset>Select Mutiple Category</fieldset>
	<select id="multiple" multiple="multiple">
	  <option selected="selected">Multiple</option>
	  <option>Multiple2</option>
	  <option selected="selected">Multiple3</option>
	</select>
	
	<script>
	$("#multiple").val(["Multiple2", "Multiple3"]);
	</script>
	
	<div class="list-movie-filter" style="margin-bottom: 10px;">
        <div class="list-movie-filter-main">
            <form id="form-filter" class="form-inline" method="GET" action="http://www.phimmoi.net/filter/">           	
                <div class="list-movie-filter-item">
                    <label for="filter-sort">Sắp xếp</label>
                    <select class="form-control" id="filter-sort" name="sort">
                        <option value="updatetime">Thời gian cập nhật</option>
                        <option value="posttime">Thời gian đăng</option>
                        <option value="year">Năm sản xuất</option>
                    </select>
                </div>
                <div class="list-movie-filter-item">
                    <label for="filter-eptype">Hình thức</label>
                    <select class="form-control" id="filter-eptype" name="eptype">
                        <option value="">Tất cả</option>
                        <option value="single">Phim lẻ</option>
                        <option value="serial" selected="">phim bộ</option>
                        <option value="theater">Phim chiếu rạp</option>
                        <option value="classic">Phim kinh điển</option>
                    </select>
                </div>
                <div class="list-movie-filter-item">
                    <label for="filter-language">Ngôn ngữ</label>
                    <select class="form-control" id="filter-language" name="language">
                        <option value="">Tất cả</option>
                        <option value="vietnam">Tiếng Việt</option>
                        <option value="illustrate">Thuyết minh</option>
                        <option value="dubbing">Lồng tiếng</option>
                        <option value="subtitle">ViệtSub</option>
                    </select>
                </div>
                <div class="list-movie-filter-item">
                
                		<div></div>
                    	<c:forEach items="${list_genre}" var="gen">     	            	  	
		            		<a class="dropdown-item" href="movie/category?categoryId=${gen.genre_id}">Phim ${gen.genre_name}</a>                   			      		                                                                                       
		                </c:forEach>
                           <div>   
                           		                  		 
				            	                              
			                </div>                          
                     
                  
                    <select id="filter-category" name="category" class="form-control">
                    
                        <option value="">Tất cả</option>

                        <option data-slug="phim-hanh-dong" value="1">Phim hành động</option>
                        <option data-slug="phim-vien-tuong" value="7">Phim viễn tưởng</option>
                        <option data-slug="phim-chien-tranh" value="8">Phim chiến tranh</option>
                        <option data-slug="phim-hinh-su" value="9">Phim hình sự</option>

                        <option data-slug="phim-phieu-luu" value="10">Phim phiêu lưu</option>
                        <option data-slug="phim-hai-huoc" value="6">Phim hài hước</option>
                        <option data-slug="phim-vo-thuat" value="2">Phim võ thuật</option>
                        <option data-slug="phim-kinh-di" value="5">Phim kinh dị</option>

                        <option data-slug="phim-hoi-hop-gay-can" value="18">Phim hồi hộp-Gây cấn</option>
                        <option data-slug="phim-bi-an-sieu-nhien" value="20">Phim Bí ẩn-Siêu
                            nhiên</option>

                        <option data-slug="phim-co-trang" value="15">Phim cổ trang</option>
                        <option data-slug="phim-than-thoai" value="16">Phim thần thoại</option>
                        <option data-slug="phim-tam-ly" value="11">Phim tâm lý</option>

                        <option data-slug="phim-tai-lieu" value="12">Phim tài liệu</option>
                        <option data-slug="phim-tinh-cam-lang-man" value="17">Phim tình cảm-Lãng
                            mạn</option>

                        <option data-slug="phim-chinh-kich-drama" value="19">Phim chính kịch -
                            Drama</option>

                        <option data-slug="phim-the-thao-am-nhac" value="13">Phim Thể thao-Âm
                            nhạc</option>

                        <option data-slug="phim-gia-dinh" value="14">Phim gia đình</option>
                        <option data-slug="phim-hoat-hinh" value="4">Phim hoạt hình</option>
                    </select>
                    
                    
                    	
                    
                </div>
                <div class="list-movie-filter-item">
                    <label for="filter-country">Quốc gia</label>
                    <select class="form-control" id="filter-country" name="country">
                        <option value="">Tất cả</option>
                        <option value="vn">Việt Nam</option>
                        <option value="cn">Trung Quốc</option>
                        <option value="us">Mỹ</option>
                        <option value="kr">Hàn Quốc</option>
                        <option value="jp">Nhật Bản</option>
                        <option value="hk">Hồng Kông</option>
                        <option value="in">Ấn Độ</option>
                        <option value="th">Thái Lan</option>
                        <option value="fr">Pháp</option>
                        <option value="tw">Đài Loan</option>
                        <option value="au">Úc</option>
                        <option value="uk">Anh</option>
                        <option value="ca">Canada</option>

                    </select>
                </div>
                <div class="list-movie-filter-item">
                    <label for="filter-year">Năm phát hành</label>
                    <select id="filter-year" name="year" class="form-control">
                        <option value="">Tất cả</option>
                        <option value="2019">2019</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="-2015">Trước 2015</option>
                    </select>
                </div>
                <button type="submit" id="btn-movie-filter" class="btn btn-red
                    btn-filter-movie"><span>Duyệt phim</span></button>
                <div class="clear"></div>
            </form>
        </div>
    </div>

<nav aria-label="Navigation for countries">
    <ul class="pagination">
        <c:if test="${currentPage != 1}">
            <li class="page-item"><a class="page-link" 
                href="ReadCountries?recordsPerPage=${recordsPerPage}&currentPage=${currentPage-1}">Previous</a>
            </li>
        </c:if>

        <c:forEach begin="1" end="${noOfPages}" var="i">
            <c:choose>
                <c:when test="${currentPage eq i}">
                    <li class="page-item active"><a class="page-link">
                            ${i} <span class="sr-only">(current)</span></a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" 
                        href="ReadCountries?recordsPerPage=${recordsPerPage}&currentPage=${i}">${i}</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>

        <c:if test="${currentPage lt noOfPages}">
            <li class="page-item"><a class="page-link" 
                href="ReadCountries?recordsPerPage=${recordsPerPage}&currentPage=${currentPage+1}">Next</a>
            </li>
        </c:if>              
    </ul>
</nav>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>

</body>
</html>