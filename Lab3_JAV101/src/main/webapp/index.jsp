<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>
<html>
<head>
<title>Lab 3: Thư viện Core</title>
<link rel="stylesheet" href="style.css">
<style >
/* Header tổng */
.site-header {
    background: #0056b3;
    color: #fff;
    padding: 15px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    animation: fadeInDown 1s ease;
}
.site-header .logo h2 {
    margin: 0;
}
.site-header .nav-menu a {
    color: #fff;
    margin-left: 20px;
    text-decoration: none;
    transition: color 0.3s;
}
.site-header .nav-menu a:hover {
    color: #ffd700;
}

/* Footer */
.site-footer {
    background: #2c3e50;
    color: #fff;
    text-align: center;
    padding: 20px;
    margin-top: 40px;
    animation: fadeInUp 1s ease;
}
.site-footer a {
    color: #ffd700;
    text-decoration: none;
}
.site-footer a:hover {
    text-decoration: underline;
}

</style>
</head>
<body>

	<!-- Header tổng -->
	<header class="site-header">
		<div class="logo">
			<h2>JSTL LAB</h2>
		</div>
		<nav class="nav-menu">
			<a href="index.jsp">Trang chủ</a> <a href="about.jsp">Giới thiệu</a>
			<a href="contact.jsp">Liên hệ</a>
		</nav>
	</header>

	<div class="container">
		<header class="page-header">
			<h1>LAB 3: MENU CÁC BÀI TẬP JSTL</h1>
			<p class="subtitle">Chọn bài tập bạn muốn kiểm tra:</p>
		</header>

		<main class="exercises-menu">
			<a href="bai1_2" class="exercise-card">
				<h3>Bài 1 & 2</h3>
				<p>JSTL Core: Vòng lặp & Thuộc tính</p>
			</a> <a href="bai3" class="exercise-card">
				<h3>Bài 3</h3>
				<p>JSTL Core: Điều kiện & Các thẻ khác</p>
			</a> <a href="bai4" class="exercise-card">
				<h3>Bài 4</h3>
				<p>JSTL Functions: Xử lý chuỗi</p>
			</a> <a href="shop.jsp" class="exercise-card">
				<h3>Nâng cao</h3>
				<p>Giỏ hàng</p>
			</a>
		</main>
	</div>

	<!-- Footer -->
	<footer class="site-footer">
		<p>&copy; 2025 JSTL Lab. Thiết kế bởi Trần.</p>
		<p>
			Liên hệ: <a href="mailto:example@email.com">example@email.com</a>
		</p>
	</footer>

</body>
</html>
