<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Đăng nhập</title>
  <link rel="stylesheet" href="css/login.css">
</head>
<body class="auth">
  <div class="auth-container">
    <div class="auth-image">
      <img src="img/school.jpg" alt="Login illustration">
    </div>
    <form class="card auth-form" action="${pageContext.request.contextPath}/login" method="post">
      <h2>Đăng nhập hệ thống</h2>

      <label>Email (Tên đăng nhập)</label>
      <input type="email" name="email" required>

      <label>Mật khẩu</label>
      <input type="password" name="password" required>

      <button type="submit">Đăng nhập</button>

      <!-- Hiển thị lỗi nếu có -->
      <c:if test="${not empty error}">
        <p class="error">${error}</p>
      </c:if>

      <!-- Link sang trang đăng ký -->
      <p class="register-link">
        Chưa có tài khoản? <a href="${pageContext.request.contextPath}/register">Đăng ký ngay</a>
      </p>
    </form>
  </div>
</body>
</html>
