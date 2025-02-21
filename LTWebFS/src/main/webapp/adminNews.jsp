<%--
  Created by IntelliJ IDEA.
  User: TO NHAT
  Date: 12/12/2023
  Time: 7:00 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Quản lý tin tức</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons-->
    <link href="assets/img/Logo/favicon_icon.png" rel="icon">
    <!--        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/news.css">
    <link rel="stylesheet" href="assets/css/adminNews.css">
    <link rel="stylesheet" href="assets/font/themify-icons/themify-icons.css">
</head>
<body>
<%
    String user = (String) session.getAttribute("userName");
    if(user== null || user.equalsIgnoreCase("")){
        user = "";
    }

%>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <div class="logo">
            <a href="index.jsp">
                <img src="assets/img/Logo/favicon_icon.png" alt="Logo"
                     style="width: 40px; height: 40px; border-radius: 5px">
            </a>
        </div>
        <!--    <i class="bi bi-list toggle-sidebar-btn"></i>-->
    </div><!-- End Logo -->

    <!--  <div class="search-bar">-->
    <!--    <form class="search-form d-flex align-items-center" method="POST" action="#">-->
    <!--      <input type="text" name="query" placeholder="Tìm kiếm" title="Enter search keyword">-->
    <!--      <button type="submit" title="Search"><i class="bi bi-search"></i></button>-->
    <!--    </form>-->
    <!--  </div>&lt;!&ndash; End Search Bar &ndash;&gt;-->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
                   data-bs-toggle="dropdown">
                    <img src="assets/img/admin/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2"><%=user%></span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6><%=user%></h6>
                        <span>Web Designer</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="html/profile.html">
                            <i class="bi bi-person"></i>
                            <span>Quản lý tài khoản</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Đăng xuất</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header>
<!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <h3 style="text-align: center">[Admin]</h3>
        <li class="nav-item ">
            <a class="nav-link collapsed" href="admin_dashboard.jsp">
                <!--                <i class="bi bi-grid"></i>-->
                <span>Thống kê doanh thu</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item ">
            <a class="nav-link collapsed" href="adminCustomer.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Quản lý khách hàng</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="adminEmployee.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Quản lý nhân viên</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="adminProduct.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Quản lý sản phẩm</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="adminOrder.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Quản lý đơn hàng</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link " href="adminNews.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Quản lý tin tức</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="adminHomes.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Quản lý trang chủ</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="adminAboutUs.jsp">
                <!--        <i class="bi bi-person"></i>-->
                <span>Nhà phân phối</span>
            </a>
        </li>

    </ul>
</aside><!-- End Sidebar-->

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Tin tức</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Trang chủ</a></li>
                <li class="breadcrumb-item active">Quản lý tin tức</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section news">

        <!-- Left side columns -->
        <div class="thumb column">
            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-suckhoe.vnecdn.net/2023/07/06/2-2921-1688531474-1688604627-5079-1688604655.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=ZJQKBauGr7l1borx6i8_4Q"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/het-canh-benh-nhan-chay-khap-noi-chup-chieu-kham-benh-4625430.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Hết cảnh bệnh nhân 'chạy khắp nơi chụp chiếu' khám bệnh</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/het-canh-benh-nhan-chay-khap-noi-chup-chieu-kham-benh-4625430.html">
                            <span>Bệnh viện Bạch Mai, Việt Đức, Chợ Rẫy đã mua sắm và sửa chữa được máy móc, trang thiết bị y tế, bệnh nhân khám và điều trị tại chỗ, không phải di chuyển đến cơ sở khác. </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-suckhoe.vnecdn.net/2023/08/25/1-1692959962-3272-1692960042.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=SAlAFJo2reBDaECaxgtpxQ"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/benh-vien-co-tien-nhung-khong-mua-duoc-thiet-bi-mong-muon-4646087.html"
                           class="hov-a-title">
                            <h4 class="h2-text">'Bệnh viện có tiền nhưng không mua được thiết bị mong muốn'</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/benh-vien-co-tien-nhung-khong-mua-duoc-thiet-bi-mong-muon-4646087.html">
                            <span>Các bệnh viện công tại Hà Nội hiện đủ tài chính nhưng gặp khó trong mua sắm thiết bị y tế do gặp các vướng mắc về giá.  </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-kinhdoanh.vnecdn.net/2023/05/31/trienlam-1685520312-8869-1685520409.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=tNuozpw42asmvSC1QsODJQ"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/trien-lam-trang-thiet-bi-y-te-quoc-te-k-med-expo-vietnam-2023-4611813.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Triển lãm Trang thiết bị Y tế quốc tế K-Med Expo Vietnam 2023</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/trien-lam-trang-thiet-bi-y-te-quoc-te-k-med-expo-vietnam-2023-4611813.html">
                            <span>Triển lãm dự kiến diễn ra từ 15 - 17/6, với sự tham gia của 150 đơn vị là công ty thiết bị y tế Hàn Quốc, doanh nghiệp nước ngoài.  </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-vnexpress.vnecdn.net/2022/10/27/3-1666845803.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=axxGXsU7BgCvhuGHVlbRew"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/nhung-cong-nghe-gioi-thieu-tai-techmart-y-te-4528680.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Những công nghệ giới thiệu tại Techmart Y tế
                            </h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/nhung-cong-nghe-gioi-thieu-tai-techmart-y-te-4528680.html">
                            <span>TP HCM - Hơn 200 công nghệ, thiết bị được giới thiệu tại chợ công nghệ và thiết bị ngành y tế (Techmart) giúp kết nối cung cầu, chuyển giao công nghệ. </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-suckhoe.vnecdn.net/2022/02/17/may-do-spo2-voi-benh-nhan-covi-9421-3876-1645107386.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=0xthQr7GyV9Fe_rJlfTvoA"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/luu-y-khi-chon-may-do-spo2-4428855.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Lưu ý khi chọn máy đo SpO2</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/luu-y-khi-chon-may-do-spo2-4428855.html">
                            <span>Người mua cần chọn máy đo SpO2 có thương hiệu, tem, phiếu bảo hành tại các cửa hàng thiết bị y tế chuyên dụng hoặc đại lý phân phối.  </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-vnexpress.vnecdn.net/2022/01/17/rosa-jpeg-8821-1636547788-jpeg-6832-1933-1642435535.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=oeF3NYd0sJF4NUJMk4tviQ"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/chieu-nang-gia-robot-phau-thuat-gap-5-lan-trong-vu-an-o-benh-vien-bach-mai-4417485.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Chiêu nâng giá robot phẫu thuật gấp 5 lần trong vụ án ở Bệnh viện Bạch Mai</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/chieu-nang-gia-robot-phau-thuat-gap-5-lan-trong-vu-an-o-benh-vien-bach-mai-4417485.html">
                            <span>Cựu giám đốc Bệnh viện Bạch Mai Nguyễn Quốc Anh bị cáo buộc nhận 400 triệu đồng và 10.000 USD, "tạo điều kiện" cho Công ty BMS nâng khống giá robot phẫu thuật gấp 5 lần.  </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-vnexpress.vnecdn.net/2021/11/08/settop1-1636340791-6783-1636340799.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=bGUONT0FfA3-4tP-iRRsWA"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/giam-doc-benh-vien-thu-duc-bi-bat-4382591.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Giám đốc Bệnh viện Thủ Đức bị bắt</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/giam-doc-benh-vien-thu-duc-bi-bat-4382591.html">
                            <span>TP HCMÔng Nguyễn Minh Quân, 48 tuổi, Giám đốc Bệnh viện TP Thủ Đức bị cáo buộc thông đồng với doanh nghiệp để mua thiết bị vật tư y tế, gây thiệt hại cho Nhà nước. </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-suckhoe.vnecdn.net/2021/10/29/le-trao-ta-ng-ma-y-chu-p-x-qua-4417-2720-1635497824.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=Nfklj4u9vVe9FzPURVAjhQ"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/benh-vien-tri-covid-19-duoc-tang-thiet-bi-y-te-cong-nghe-cao-4378829.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Bệnh viện trị Covid-19 được tặng thiết bị y tế công nghệ cao</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/benh-vien-tri-covid-19-duoc-tang-thiet-bi-y-te-cong-nghe-cao-4378829.html">
                            <span>Bệnh viện điều trị người bệnh Covid-19 (Hà Nội) được tặng máy X-quang di động kỹ thuật số, Bệnh viện Trung ương Huế nhận hệ thống máy gây mê kèm thở.  </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-kinhdoanh.vnecdn.net/2021/09/02/khautrang3Mnhai-1630565965-1786-1630566197.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=JIHoDYhwL8OINx9RriPNTw"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/hon-20-800-khau-trang-3m-nghi-hang-gia-4350196.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Hơn 20.800 khẩu trang 3M nghi hàng giả</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/hon-20-800-khau-trang-3m-nghi-hang-gia-4350196.html" >
                            <span>Trong 400.000 sản phẩm, thiết bị y tế phòng dịch bị thu giữ do không rõ nguồn gốc, 20.880 khẩu trang y tế 3M có dấu hiệu giả mạo nhãn hiệu.  </span>
                        </a>
                    </div>
                </div>
            </div>

            <hr>

            <div class="content">
                <div class="row-col ">
                    <div class="img">
                        <img
                                src="https://i1-kinhdoanh.vnecdn.net/2021/08/18/image001-1629278176-7902-1629284158.jpg?w=500&h=300&q=100&dpr=2&fit=crop&s=h7YBwekJU0WKMdpN9Im5gA"
                                alt="ảnh minh họa">
                    </div>
                    <div class="title">
                        <a href="https://vnexpress.net/phuong-trang-tang-gan-6-000-thiet-bi-y-te-cho-tp-hcm-4342614.html"
                           class="hov-a-title">
                            <h4 class="h4-text">Phương Trang tặng gần 6.000 thiết bị y tế cho TP HCM</h4>
                        </a>
                    </div>
                    <div class="contention">
                        <a href="https://vnexpress.net/phuong-trang-tang-gan-6-000-thiet-bi-y-te-cho-tp-hcm-4342614.html">
                            <span>Tập đoàn tặng 20 máy trợ thở, 1.390 máy tạo oxy, 4.400 máy đo nồng độ oxy SpO2 cho các bệnh viện dã chiến, trung tâm y tế, vào ngày 17/8.  </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Right side columns -->
        <div class="btn-row-col">
            <div class="btns">
                <button class="js-update-url button">Cập Nhật</button>
            </div>
        </div>

        <div class="update js-update">
            <div class="update-container">
                <div class="update-close js-update-close">
                    <i class="ti-close"></i>
                </div>

                <header class="update-header">
                    <i class="update-heading-icon ti-upload"></i>
                    Cập Nhật
                </header>

                <div class="update-body">
                    <label  class="update-label">
                        <i class="bi bi-type-italic"></i>
                        Tiêu đề
                    </label>
                    <input id="update-quantity" type="text" class="update-input" placeholder="tiêu đề">

                    <label class="update-label">
                        <i class="ti-comment"></i>
                        Nội dung
                    </label>
                    <input id="update-email" type="email" class="update-input" placeholder="Nội dung">

                    <label class="update-label">
                        <i class="ti-link"></i>
                        URL
                    </label>
                    <input id="update-url" type="email" class="update-input" placeholder="Url">

                    <button id="update-tickets">
                        UPDATE
                        <i class="ti-upload"></i>
                    </button>
                </div>

            </div>
        </div>

    </section>

</main><!-- End #main -->

<!--<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i-->
<!--    class="bi bi-arrow-up-short"></i></a>-->

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.umd.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
<script src="assets/js/updateUrl.js"></script>

</body>
</html>
