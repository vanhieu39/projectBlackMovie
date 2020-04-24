<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
	<link href="<c:url value="/resources/css/bootstrap.min.css" />"
  	rel="stylesheet">
  	<link href="<c:url value="/resources/css/style.css" />"
  	rel="stylesheet">
	
</head>
<body>
	<header>
        <div class="container-fluid">
            <div class="row text-center ">
                <div class="col-md-4 col-sm-12">
                    <h1>PhimMoi<span>.NET</span></h1>
                </div>
                <div class="col-md-4 col-sm-12 mb-2 mt-2">
                    <div class="input-group">
                        <input type="text" class='form-control' placeholder="Tìm kiếm, Diễn đàn ..." />
                        <div class="input-group-append">
                            <span class="input-group-text">Search</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 mt-2">
                    <div class="btn-group">
                        <button type="text" class="btn bg-red">Đăng Ký</button>
                        <button type="text" class="btn bg-blue">Đăng Nhập</button>
                    </div>
                    <button type="text" class="btn bg-blue">Đăng Nhập Facebook</button>
                </div>
            </div>
        </div>
    </header>
    <!-- menu -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <h1 class="navbar-brand">MENU</h1>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#demo">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="demo">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active dropdown">
                        <a href="#" class=" dropdown-toggle" data-toggle="dropdown">
                            Phim Mới
                        </a>
                        <ul class="dropdown-menu bg-dark">
                            <li> <a href="#">Phim kiếm hiệp</a></li>
                            <li><a href="#">Phim tây du ký</a> </li>
                            <li> <a href="#">Phim chưởng</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a href="#" class="nav-link">
                            Thể Loại
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link">
                            Quốc Gia
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link">
                            Phim Lẻ
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link">
                            Phim Bộ
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link">
                            Phim Thuyết Minh
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link">
                            Phim Chiếu Rạp
                        </a></li>

                </ul>
            </div>
        </div>
    </nav>
    <!-- end menu -->
    <!-- carousel -->
    <section>
        <section class="container-1">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <div class="container">
                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>

                    </ul> <!-- The slideshow -->

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./img/co_nan.jpg" alt="Los Angeles">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/hac_le.jpg" alt="Chicago">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/linh_kiem.jpg" alt="New York">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/robot.jpg" alt="New York">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
        </section>
        </div>
        </div>
    </section>

    <!-- end carousel -->
    <!-- phim đề cử -->
    <section>
        <div class="container">
            <h1>Phim Đề Cử</h1>
            <hr>
            <div class="bg-1">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="card">
                            <img class="card-img-top" src="./img/dao_dien_tran_tui.jpg" alt="" width="50px"
                                height="320px">
                            <div class="card-img-overlay pos">
                                <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>
                                <div class="bg-nen">
                                    <h3>Tây Du Ký</h3>
                                    <span>Chúc bạn xem phim vui vẻ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="card">
                            <img class="card-img-top" src="./img/co_nan.jpg" alt="" width="50px" height="320px">
                            <div class="card-img-overlay">
                                <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>
                                <div class="bg-nen">
                                    <h3>Tây Du Ký</h3>
                                    <span>Chúc bạn xem phim vui vẻ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="card">
                            <img class="card-img-top" src="./img/nu_sieu_nhan.jpg" alt="" width="50px" height="320px">
                            <div class="card-img-overlay">
                                <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>
                                <div class="bg-nen">
                                    <h3>Tây Du Ký</h3>
                                    <span>Chúc bạn xem phim vui vẻ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="card">
                            <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                            <div class="card-img-overlay">
                                <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>
                                <div class="bg-nen">
                                    <h3>Tây Du Ký</h3>
                                    <span>Chúc bạn xem phim vui vẻ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end phim đề cử -->

    <section class="section-1">
        <div class="container">
            <h1>Phim Chiếu Rạp</h1>
            <hr>
            <div class="row">
                <div class="col-md-9 col-sm-9">
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="card mt-3">
                                <img class="card-img-top" src="./img/hac_le.jpg" alt="" width="50px" height="320px">
                                <div class="card-img-overlay">
                                    <button class="btn-sm" type="button">HD-VietSub|Tập 17</button>

                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Ngôi sao số 1</h6>
                                    <span class="card-text">Chúc bạn xem phim vui vẻ</span>
                                    <button type="button" class="btn btn">Xem</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-3 col-sm-3">
                    <marquee direction='down' loop='12' id="text" onmouseover='document.all.text.stop()'
                        onmouseout='document.all.text.start()'>
                        <div class="bg-2">
                            <div class="box ">
                                <div class="d-flex">
                                    <img src="./img/dao_dien_tran_tui.jpg" alt="">
                                    <div class="pt-2">
                                        <h6> Tên Phim Bạn Muốn Nhập</h6>
                                        <span>Thể Loại</span>
                                    </div>

                                </div>
                            </div>
                            <div class="box mt-3 ">
                                <div class="d-flex">
                                    <img src="./img/dao_dien_tran_tui.jpg" alt="">
                                    <div class="pt-2">
                                        <h6> Tên Phim Bạn Muốn Nhập</h6>
                                        <span>Thể Loại</span>
                                    </div>
                                </div>
                            </div>
                            <div class="box mt-3">
                                <div class="d-flex">
                                    <img src="./img/dao_dien_tran_tui.jpg" alt="">
                                    <div class="pt-2">
                                        <h6> Tên Phim Bạn Muốn Nhập</h6>
                                        <span>Thể Loại</span>
                                    </div>
                                </div>
                            </div>
                            <div class="box mt-3">
                                <div class="d-flex">
                                    <img src="./img/dao_dien_tran_tui.jpg" alt="">
                                    <div class="pt-2">
                                        <h6> Tên Phim Bạn Muốn Nhập</h6>
                                        <span>Thể Loại</span>
                                    </div>
                                </div>
                            </div>
                            <div class="box mt-3">
                                <div class="d-flex">
                                    <img src="./img/dao_dien_tran_tui.jpg" alt="">
                                    <div class="pt-2">
                                        <h6> Tên Phim Bạn Muốn Nhập</h6>
                                        <span>Thể Loại</span>
                                    </div>

                                </div>
                            </div>
                            <div class="box mt-3">
                                <div class="d-flex">
                                    <img src="./img/dao_dien_tran_tui.jpg" alt="">
                                    <div class="pt-2">
                                        <h6> Tên Phim Bạn Muốn Nhập</h6>
                                        <span>Thể Loại</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </marquee>
                </div>
            </div>
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h1>PhimMoi.Net</h1>
                    <p>Cảm Ơn Bạn đã Theo Dõi</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h3>Phim Lẻ</h3>
                    <span>Phim hành động</span>
                    <span>Phim kiếm hiệp</span>
                    <span>Phim kinh dị</span>
                    <span>Phim viễn tưởng</span>
                    <span>Phim kiếm hiệp</span>
                    <span>Phim kinh dị</span>
                    <span>Phim viễn tưởng</span>
                </div>

                <div class="col-md-3 col-sm-6">
                    <h3>Phim bộ</h3>
                    <span>Phim Trung Quốc</span>
                    <span>Phim Hàn Quốc</span>
                    <span>Phim Mỹ</span>
                    <span>Phim kiếm hiệp</span>
                    <span>Phim kinh dị</span>
                    <span>Phim viễn tưởng</span>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h6>Liên hệ quảng cáo</h6>
                    <span>Email: phimmoi@gmail.com</span>
                    <span></span>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	
</body>
</html>
