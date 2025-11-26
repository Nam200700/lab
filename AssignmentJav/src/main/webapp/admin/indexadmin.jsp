<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giao Diện Quản Trị - ABC News</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
	<div id="dashboard-container">
		<!-- Header -->
		<header class="dashboard-header">
			<div class="logo">ABC News Admin</div>
			<div class="user-info">
				<span>Xin chào, Phóng viên A</span> <a href="logout.jsp"
					class="logout-btn">Đăng xuất</a>
			</div>
		</header>

		<!-- Sidebar -->
		<aside class="dashboard-sidebar">
			<nav>
				<ul>
					<li><a href="<%=request.getContextPath()%>/index.jsp">🏠 Trang chủ</a></li>
					<li><a href="dashboard.jsp">📊 Tổng quan</a></li>
					<li><a href="news.jsp">📰 Tin tức</a></li>
					<li><a href="loaitin.jsp">🏷️ Loại Tin</a></li>
					<li><a href="Newsletter.jsp">✉️ Newsletter</a></li>
					<li><a href="stats.jsp">📈 Thống kê</a></li>
					<li><a href="quanlyuser.jsp">👥 Người dùng</a></li>
					<li><a href="settings.jsp">⚙️ Cài đặt</a></li>
				</ul>
			</nav>
		</aside>

		<!-- Nội dung chính -->
		<main class="dashboard-main">
			<h2>📊 Bảng điều khiển</h2>
			<div class="cards">
				<div class="card">
					<h3>Bài viết đã đăng</h3>
					<p>120</p>
				</div>
				<div class="card">
					<h3>Tin chờ duyệt</h3>
					<p>15</p>
				</div>
				<div class="card">
					<h3>Lượt xem hôm nay</h3>
					<p>8,450</p>
				</div>
				<div class="card">
					<h3>Người dùng mới</h3>
					<p>25</p>
				</div>
			</div>

			<section class="table-section">
				<h3>Danh sách bài viết gần đây</h3>
				<table>
					<thead>
						<tr>
							<th>Tiêu đề</th>
							<th>Tác giả</th>
							<th>Ngày đăng</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Bản tin A</td>
							<td>Nguyễn Văn A</td>
							<td>20/11/2025</td>
						</tr>
						<tr>
							<td>Bản tin B</td>
							<td>Trần Thị B</td>
							<td>19/11/2025</td>
						</tr>
					</tbody>
				</table>
			</section>
		</main>
	</div>

</body>
</html>