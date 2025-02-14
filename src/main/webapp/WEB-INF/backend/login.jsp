<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang đăng nhập</title>
    <link rel="stylesheet" type="text/css" href="/css/style_dangnhap.css">
</head>

<body>

<div class="container">
    <div class="bg-light p-5 rounded">
        <div class="col-sm-8 mx-auto">
            <br>
            <form class="form-m" action="/_admin/dologin" method="post">
                <div class="button-group">
                    <button type="button" class="btn sign-in" formaction="dangnhap.html"
                            onclick="navigateToLogin()">SIGN IN</button>
                    <button type="button" class="btn sign-up" formaction="dangnhap.html"
                            onclick="navigateToSignup()">SIGN UP</button>
                </div>
                <fieldset>
                    <div class="form-group">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="username" name="username" value="user" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" name="password" value="password" class="form-control">
                    </div>
                    <div class="forget-password">
                        <small><a href="#dd">Forget password?</a></small>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Đăng nhập" class="btn btn-primary">
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

<script>
    function navigateToLogin() {
        window.location.href = '/_admin/login'; // Đường dẫn đến trang đăng nhập
    }

    function navigateToSignup() {
        window.location.href = '/_signup'; // Đường dẫn đến trang đăng ký
    }
</script>
</body>

</html>