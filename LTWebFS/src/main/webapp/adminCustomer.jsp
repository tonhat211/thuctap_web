<%--
  Created by IntelliJ IDEA.
  User: TO NHAT
  Date: 08/12/2023
  Time: 11:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Admin - Quản lý khách hàng</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/img/Logo/favicon_icon.png" type="image/x-icon">

    <!--  <link href="assets/img/favicon.png" rel="icon">-->
    <!--  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!--fontawesome-->
    <link rel="stylesheet" href="./assets/font/fontawesome-free-6.4.0-web/css/all.min.css">
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/adminCustomer.css">
    <link rel="stylesheet" href="assets/css/baseN.css">
    <link rel="stylesheet" href="assets/css/adminN.css">
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
    </div><!-- End Logo -->

    <!--    <div class="search-bar">-->
    <!--        <form class="search-form d-flex align-items-center" method="POST" action="#">-->
    <!--            <input type="text" name="query" placeholder="Tìm kiếm" title="Enter search keyword">-->
    <!--            <button type="submit" title="Search"><i class="bi bi-search"></i></button>-->
    <!--        </form>-->
    <!--    </div>&lt;!&ndash; End Search Bar &ndash;&gt;-->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->
            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="assets/img/profile/profile-img.jpg" alt="Profile" class="rounded-circle">
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
                            <span>Cài đặt</span>
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

<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <h3 id="role" style="text-align: center">[Admin]</h3>
        <li class="nav-item ">
            <a class="nav-link collapsed" href="admin_dashboard.jsp">
                <!--                <i class="bi bi-grid"></i>-->
                <span>Thống kê doanh thu</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item ">
            <a class="nav-link " href="adminCustomer.jsp">
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
            <a class="nav-link collapsed" href="adminNews.jsp">
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
        <h1>Quản lí khách hàng</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Trang chủ</a></li>
                <li class="breadcrumb-item active">Quản lí khách hàng</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <!--    <section class="section dashboard">-->
    <!--        <h1>Content</h1>-->
    <!--    </section>-->
    <div class="ad-content">

        <div class="ad-content-item">
            <div class="ad_header">
                <div class="ad_find-container">
                    <input type="text" placeholder="Nhập id hoặc tên" class="ad_find-input">
                    <div class="ad_find-btn"><i class="fa-solid fa-magnifying-glass"></i></div>
                </div>

            </div>
            <div class="ad_container">
                <div class="customer-showing">
                    <div class="customer-showing-item">
                        <div class="customer_info">
                            <p>ID: <span class="cus_id">#cus24</span></p>
                            <p>Họ tên: <span class="cus_name">To Minh Nhat</span></p>
                            <p>Nhóm: <span class="cus_kind">Đại lí/Bán lẻ</span></p>
                            <p>Số điện thoại: <span class="cus_phone">0385147962</span></p>
                            <p>Email: <span class="cus_email">21130463@st.hcmuaf.edu.vn</span></p>
                            <p>Địa chỉ: <span class="cus_address">q2 - tp.HCM</span></p>
                        </div>
                    </div>
                    <div class="separate-vertical-ad"></div>
                    <div class="customer-showing-item">
                        <div class="customer_info-buying">
                            <p class="cus_total-pay-title">Tổng chi tiêu:</p>
                            <p class="cus_total-pay">90 000 000 <span class="money-unit">VND</span></p>

                        </div>

                    </div>
                    <div class="disabled-showing">ĐÃ CẤM</div>
                </div>

                <div class="customer-history-buying">
                    <p class="history-title">Lịch sử mua hàng</p>
                    <div class="order-list">

                        <!--                                    1 don hang-->
                        <div class="order-item-container">
                            <div class="order-info">
                                <p>Mã đơn hàng: <span class="order-id">#or1</span></p>

                                <!--1 san pham trong don hang-->
                                <p class="order-item">
                                    <span class="order-item-name">Máy trợ thính</span>
                                    (x<span class="order-item-qty">2</span>)
                                    <span class="order-item-priceUnit">1000000</span> VND
                                </p>

                                <p class="order-item">
                                    <span class="order-item-name">Pin máy trợ thính</span>
                                    (x<span class="order-item-qty">2</span>)
                                    <span class="order-item-priceUnit">500000</span> VND
                                </p>

                                <p class="order-item">
                                    <span class="order-item-name">Khẩu trang </span>
                                    (x<span class="order-item-qty">10</span>)
                                    <span class="order-item-priceUnit">30000</span> VND
                                </p>

                            </div>

                            <div class="order-price">
                                <p>Thời gian: <span class="order-date">27.10.2023</span> <span
                                        class="order-time">12:00</span> <span
                                        class="order-isCompleted">(Đã hoàn thành)</span></p>
                                <p>Tổng tiền: <span class="order-total-price">1530000</span> VND </p>
                                <p>Giảm: <span class="order-discount-price">400000</span> VND </p>
                                <p>Thanh toán thực: <span class="order-payed-price">1130000</span> VND </p>

                            </div>


                        </div>
                        <div class="order-item-container">
                            <div class="order-info">
                                <p>Mã đơn hàng: <span class="order-id">#or1</span></p>

                                <!--1 san pham trong don hang-->
                                <p class="order-item">
                                    <span class="order-item-name">Máy trợ thính</span>
                                    (x<span class="order-item-qty">2</span>)
                                    <span class="order-item-priceUnit">1000000</span> VND
                                </p>

                                <p class="order-item">
                                    <span class="order-item-name">Pin máy trợ thính</span>
                                    (x<span class="order-item-qty">2</span>)
                                    <span class="order-item-priceUnit">500000</span> VND
                                </p>

                                <p class="order-item">
                                    <span class="order-item-name">Khẩu trang </span>
                                    (x<span class="order-item-qty">10</span>)
                                    <span class="order-item-priceUnit">30000</span> VND
                                </p>

                            </div>

                            <div class="order-price">
                                <p>Thời gian: <span class="order-date">27.10.2023</span> <span
                                        class="order-time">12:00</span> <span
                                        class="order-isCompleted">(Đã hoàn thành)</span></p>
                                <p>Tổng tiền: <span class="order-total-price">1530000</span> VND </p>
                                <p>Giảm: <span class="order-discount-price">400000</span> VND </p>
                                <p>Thanh toán thực: <span class="order-payed-price">1130000</span> VND </p>

                            </div>


                        </div>

                    </div>

                </div>

            </div>
        </div>
        <div class="separate-vertical-ad"></div>

        <div class="ad-content-item">
            <div class="ad_header">
                <div class="ad_func-container">
                    <div class="ad_func-save-btn ad_func-btn">Lưu</div>
                </div>
            </div>
            <div class="ad_container">
                <div class="form-container">
                    <form action="">
                        <div class="input-wrap">
                            <label for="cus-name" class="input-title">Họ và tên</label>
                            <input type="text" class="input-item" name="cus-name" id="cus-name">
                            <span class="input-error"></span>
                        </div>
                        <div class="input-wrap">
                            <label for="cus-name" class="input-title">Nhóm</label>
                            <input type="text" class="input-item" name="cus-name" id="cus-kind">
                            <span class="input-error"></span>
                        </div>
                        <div class="input-wrap">
                            <label for="cus-name" class="input-title">Số điện thoại</label>
                            <input type="text" class="input-item" name="cus-name" id="cus-phone">
                            <span class="input-error"></span>
                        </div>
                        <div class="input-wrap">
                            <label for="cus-name" class="input-title">Email</label>
                            <input type="text" class="input-item" name="cus-name" id="cus-email">
                            <span class="input-error"></span>
                        </div>
                        <div class="input-wrap">
                            <label for="cus-name" class="input-title">Địa chỉ</label>
                            <input type="text" class="input-item" name="cus-name" id="cus-address">
                            <span class="input-error"></span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="customer-control">
                <div class="ad_btn-control btn-up-cus">Cập nhật thông tin</div>
                <div class="ad_btn-control btn-ban-cus">Cấm</div>

                <!--                                    Bấm thì hiện ra thông báo gửi mật khẩu đến email đã đăng kí	-->
                <div class="ad_btn-control btn-pwd-cus">Cấp lại mật khẩu</div>
            </div>

        </div>
        <div class="confirm-popup confirm-ban">
            <div class="modal__overlay">
                <div class="modal__confirm-content" onclick="event.stopPropagation()">
                    <div class="confirm__message">
                        <p>Bạn chắc chắn muốn cấm khách hàng này? <br/>
                            Lưu ý sau khi cấm không thể mở lại tài khoản này, <br/>
                            tài khoản này sẽ vẫn tồn tại trong cơ sơ dữ liệu, nhưng không thể mở lại.</p>
                    </div>
                    <div class="confirm__control">
                        <div class="confirm-btn yes-confirm">Cấm</div>
                        <div class="confirm-btn no-confirm">Hủy</div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</main><!-- End #main -->


<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>


<!-- Template Main JS File -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/adCus.js"></script>
<script>
    // getInfo();
    // saveChanged();
</script>
</body>
</html>
