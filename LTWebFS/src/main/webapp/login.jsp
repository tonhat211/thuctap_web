<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="shortcut icon" href="assets/img/Logo/favicon_icon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/css_login/login.css">
    <link rel="stylesheet" href="assets/font/fontawesome-free-6.4.0-web/css/all.min.css">
</head>
<body>
<div id="main-container">
    <h1>Đăng nhập</h1>
    <form action="login" method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Email <span style="color: #ED1212">*</span></label>
            <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" name="email" class="form-control form-control-lg" id="email" placeholder="Nhập email">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mật khẩu <span style="color: #ED1212">*</span></label>
            <input type="password" name="password" class="form-control form-control-lg" id="password" aria-describedby="passwordHelp"
                   placeholder="Nhập mật khẩu">
            <div id="passwordHelp" class="form-text"><a href="">Quên mật khẩu ?</a></div>
        </div>
<%--        <div class="mb-3 form-check">--%>
<%--            <input type="checkbox" class="form-check-input" id="rememberLogin">--%>
<%--            <label class="form-check-label" for="rememberLogin">Ghi nhớ đăng nhập</label>--%>
<%--        </div>--%>
        <div class="d-grid gap-2">
            <button id="submitLogin" class="btn" type="submit"><b>Đăng nhập</b></button>
        </div>
        <div class="separate d-flex">
            <hr class="line">
            <p class="or">hoặc</p>
            <hr class="line">
        </div>
        <!--        <div class="facebook">-->
        <!--            <i class="fa-brands fa-facebook"></i> Facebook-->
        <!--        </div>-->
        <p class="already">Chưa có tài khoản ? <a class="log" href="html/logup.html">Đăng ký</a>
    </form>
</div>
</body>
</html>
