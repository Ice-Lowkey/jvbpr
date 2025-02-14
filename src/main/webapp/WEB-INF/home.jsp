<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>trang chủ</title>
    <link rel="stylesheet" href="/css/style_home.css">
</head>

<body>
<header>
    <nav class="navbar">
        <div class="navbar-tt">
            <a href="day1.html">TAJ</a>
        </div>
        <ul class="navbar-menu">
            <li><a href="day1.html">Trang chủ</a></li>
            <li><a href="service.html">Thông tin trường học</a></li>
            <li><a href="Intro.html">Danh sách giáo vụ</a></li>
<%--            <li><a href="#Rate">Đánh giá</a></li>--%>
<%--            <li><a href="#Customer">Khách Hàng</a></li>--%>
            <li><a href="Phone.html">Liên hệ</a></li>
        </ul>
        <div>
            <button class="styled-button1" onclick="navigateToSignin()">Đăng nhập</button>
            <button class="styled-button1" onclick="navigateToSignup()">Đăng ký</button>
        </div>

    </nav>
</header>

<div class="rectangle-container">
    <a href="page1.html" class="rectangle">Quản lý khoa</a>
    <a href="page2.html" class="rectangle">Quản lý ngành học</a>
    <a href="page3.html" class="rectangle">Quản lý matching</a>
    <a href="page4.html" class="rectangle">Quản lý hợp tác</a>
    <a href="page5.html" class="rectangle">Báo các thống kê</a>
    <a href="page6.html" class="rectangle">Kết quả tuyển dụng</a>
</div>

</body>

<script>
    function navigateToSignin() {
        window.location.href = "/_admin/login"; // Thay "/" bằng đường dẫn trang chủ của bạn
    }
    function navigateToSignup() {
        window.location.href = "createuser"; // Thay "/" bằng đường dẫn trang chủ của bạn
    }
</script>