<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang đăng ký</title>
    <link rel="stylesheet" type="text/css" href="/css/style_dangky.css">

</head>

<body>

<div class="container">
    <div class="bg-light p-5 rounded">
        <div class="col-sm-8 mx-auto">
            <br>
            <form class="form-m" id="registerForm" action="save" method="post">
                <div class="form-header">
                    <h3>Đăng ký người dùng mới</h3>
                </div>
                <fieldset>
                    <div class="form-group">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="username" name="username" class="form-control">
                        <small class="error" id="usernameError"></small>
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" name="password" class="form-control">
                        <small class="error" id="passwordError"></small>
                    </div>
                    <div class="form-group">
                        <label for="repassword">Nhập lại mật khẩu</label>
                        <input type="password" id="repassword" name="repassword" class="form-control">
                        <small class="error" id="repasswordError"></small>
                    </div>
                    <div class="form-group">
                        <label for="phone">Số điện thoại</label>
                        <input type="number" id="phone" name="phone" class="form-control">
                        <small class="error" id="phoneError"></small>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" class="form-control">
                        <small class="error" id="emailError"></small>
                    </div>
                    <div class="form-group">
                        <label for="role">Vai trò</label>
                        <select id="role" name="role" class="form-control">
                            <option value="">-- Chọn vai trò --</option>
                            <option value="admin">Admin</option>
                            <option value="user">User</option>
                            <option value="customer">Customer</option>
                        </select>
                        <small class="error" id="roleError"></small>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Đăng ký" class="btn btn-primary">
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

<script>
    document.getElementById("registerForm").addEventListener("submit", function (event) {
        let isValid = true;

        let username = document.getElementById("username").value.trim();
        let password = document.getElementById("password").value.trim();
        let repassword = document.getElementById("repassword").value.trim();
        let phone = document.getElementById("phone").value.trim();
        let email = document.getElementById("email").value.trim();
        let role = document.getElementById("role").value.trim();

        document.getElementById("usernameError").textContent = "";
        document.getElementById("passwordError").textContent = "";
        document.getElementById("repasswordError").textContent = "";
        document.getElementById("phoneError").textContent = "";
        document.getElementById("emailError").textContent = "";
        document.getElementById("roleError").textContent = "";

        if (username === "") {
            document.getElementById("usernameError").textContent = "Tên đăng nhập không được để trống!";
            isValid = false;
        }

        if (password === "") {
            document.getElementById("passwordError").textContent = "Mật khẩu không được để trống!";
            isValid = false;
        }

        if (repassword === "") {
            document.getElementById("repasswordError").textContent = "Vui lòng nhập lại mật khẩu!";
            isValid = false;
        } else if (password !== repassword) {
            document.getElementById("repasswordError").textContent = "Mật khẩu không khớp!";
            isValid = false;
        }

        if (phone === "") {
            document.getElementById("phoneError").textContent = "Số điện thoại không được để trống!";
            isValid = false;
        }

        if (email === "") {
            document.getElementById("emailError").textContent = "Email không được để trống!";
            isValid = false;
        }

        if (role === "") {
            document.getElementById("roleError").textContent = "Vui lòng chọn vai trò!";
            isValid = false;
        }

        if (!isValid) {
            event.preventDefault();
        }
    });

</script>

</body>