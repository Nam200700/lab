<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Đăng ký</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body class="auth">
  <div class="auth-container">
    <!-- Ảnh minh họa bên trái -->
    <div class="auth-image">
      <img src="${pageContext.request.contextPath}/img/register.jpg" alt="Register illustration">
    </div>

    <!-- Form đăng ký bên phải -->
    <form class="card auth-form" action="${pageContext.request.contextPath}/register" method="post">
      <h2>Tạo tài khoản mới</h2>

      <label>Họ và tên</label>
      <input type="text" name="fullname" required>

      <label>Email</label>
      <input type="email" name="email" required>

      <label>Mật khẩu</label>
      <input type="password" name="password" required>

      <label>Xác nhận mật khẩu</label>
      <input type="password" name="confirmPassword" required>

      <button type="submit">Đăng ký</button>

      <!-- Hiển thị lỗi nếu có -->
      <c:if test="${not empty error}">
        <p class="error">${error}</p>
      </c:if>

      <!-- Link chuyển sang đăng nhập -->
      <p class="login-link">
        Đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng nhập ngay</a>
      </p>
    </form>
  </div>
</body>
</html>
