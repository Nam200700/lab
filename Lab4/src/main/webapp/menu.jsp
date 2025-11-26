<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<style>
/* ===== Body ===== */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f9fbfd; /* nền xanh nhạt nhẹ nhàng */
    margin: 0;
    padding: 0;
    color: #333;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    animation: fadeIn 1s ease-in; /* hiệu ứng xuất hiện */
}

/* ===== Logo ===== */
body img {
    display: block;
    margin: 30px auto;
    max-width: 220px;
    height: auto;
    animation: floatLogo 3s ease-in-out infinite; /* logo nổi nhẹ */
}

/* ===== Menu ===== */
.menu {
    background: linear-gradient(90deg, #64b5f6, #4fc3f7); /* xanh pastel gradient */
    display: flex;
    justify-content: center;
    padding: 12px 0;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    animation: slideDown 0.8s ease-out;
}

.menu a {
    color: #ffffff;
    text-decoration: none;
    margin: 0 15px;
    padding: 10px 18px;
    border-radius: 6px;
    transition: all 0.3s ease;
}

.menu a:hover {
    background-color: rgba(255,255,255,0.2); /* hover sáng nhẹ */
    transform: scale(1.08);
}

/* ===== Content ===== */
.content {
    padding: 40px 20px;
    text-align: center;
    flex: 1;
    animation: fadeInUp 1s ease;
}

/* ===== Footer ===== */
.footer {
    background: linear-gradient(90deg, #64b5f6, #4fc3f7);
    color: #ffffff;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
    box-shadow: 0 -2px 6px rgba(0,0,0,0.05);
    animation: fadeIn 1.2s ease-in;
}

.footer a {
    color: #ffffff;
    text-decoration: underline;
    transition: color 0.3s ease;
}

.footer a:hover {
    color: #e1f5fe; /* xanh nhạt hơn khi hover */
}

/* ===== Animations ===== */
@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes slideDown {
    from { transform: translateY(-50px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
}

@keyframes floatLogo {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-8px); }
}
</style>
</head>
<body>


	<div class="menu">
		<a href="${pageContext.request.contextPath}">Trang chủ</a> <a
			href="${pageContext.request.contextPath}/login">Bài 1: Phân biệt
			GET và POST</a> <a href="${pageContext.request.contextPath}/bai2">Bài
			2: Xử lý form nhiều nút</a> <a
			href="${pageContext.request.contextPath}/Registration">Bài 3: Đọc
			tham số</a> <a href="${pageContext.request.contextPath}/upload">Bài
			4: Upload file</a>
	</div>



</body>
</html>
