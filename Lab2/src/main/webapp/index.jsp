<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB 2: Menu Điều Hướng</title>
<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 20px;
	color: #333;
	animation: fadeInBody 1s ease-in;
}

@
keyframes fadeInBody {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
h1 {
	text-align: center;
	color: #007bff;
	margin-bottom: 10px;
	animation: slideDown 0.8s ease-out;
}

@
keyframes slideDown {from { transform:translateY(-20px);
	opacity: 0;
}

to {
	transform: translateY(0);
	opacity: 1;
}

}
p {
	text-align: center;
	font-size: 16px;
	margin-bottom: 30px;
	animation: fadeInText 1.2s ease-in;
}

@
keyframes fadeInText {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.menu {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	gap: 15px;
	margin-bottom: 30px;
}

.menu-link {
	padding: 12px 20px;
	border: 2px solid #007bff;
	border-radius: 8px;
	background-color: #ffffff;
	color: #007bff;
	text-decoration: none;
	font-weight: 600;
	transition: all 0.3s ease;
	animation: fadeInLink 0.5s ease-in;
}

.menu-link:hover {
	background-color: #007bff;
	color: #fff;
	transform: scale(1.05);
}

@
keyframes fadeInLink {from { opacity:0;
	transform: scale(0.95);
}

to {
	opacity: 1;
	transform: scale(1);
}

}
.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
}

.item {
	width: 200px;
	border: 1px solid #ddd;
	border-radius: 8px;
	background-color: #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 10px;
	text-align: center;
	animation: fadeInItem 0.8s ease-in;
}

@
keyframes fadeInItem {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.mode-toggle {
	padding: 10px 18px;
	border: none;
	border-radius: 8px;
	background-color: #007bff;
	color: #fff;
	font-weight: bold;
	cursor: pointer;
	transition: background-color 0.4s ease, transform 0.3s ease;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.mode-toggle:hover {
	transform: scale(1.05);
	background-color: #0056b3;
}

body {
	transition: background-color 0.5s ease, color 0.5s ease;
}

.item, .menu-link {
	transition: background-color 0.5s ease, color 0.5s ease, border-color
		0.5s ease;
}

body.dark-mode {
	background-color: #121212;
	color: #f1f1f1;
}

body.dark-mode .menu-link {
	background-color: #1e1e1e;
	color: #90caf9;
	border-color: #90caf9;
}

body.dark-mode .menu-link:hover {
	background-color: #90caf9;
	color: #000;
}

body.dark-mode .item {
	background-color: #1e1e1e;
	border-color: #444;
	box-shadow: 0 2px 5px rgba(255, 255, 255, 0.1);
}

body.dark-mode .mode-toggle {
	background-color: #90caf9;
	color: #000;
}
</style>
</head>
<body>
	<div
		style="display: flex; justify-content: flex-end; margin-bottom: 10px;">
		<button id="toggleMode" class="mode-toggle">
			<span id="modeIcon">🌙</span>
		</button>
	</div>


	<h1>LAB 2: MENU CÁC BÀI TẬP</h1>
	<p>Chọn bài tập bạn muốn kiểm tra:</p>

	<div class="menu">
		<a href="sharer" class="menu-link">Bài 1: Truyền Dữ Liệu Cơ Bản</a> <a
			href="user" class="menu-link">Bài 2: Sử Dụng jsp:include</a> <a
			href="form/update" class="menu-link">Bài 3 & 4: Form & JavaBean</a>
	</div>

	<hr>

	<div class="container">
		<div class="item">
			<jsp:include page="item.jsp">
				<jsp:param name="name" value="Fontend" />
				<jsp:param name="img" value="anh2.png" />
			</jsp:include>
		</div>
		<div class="item">
			<jsp:include page="item.jsp">
				<jsp:param name="name" value="Dev" />
				<jsp:param name="img" value="anh3.png" />
			</jsp:include>
		</div>
		<div class="item">
			<jsp:include page="item.jsp">
				<jsp:param name="name" value="Leader" />
				<jsp:param name="img" value="anh4.png" />
			</jsp:include>
		</div>
		<div class="item">
			<jsp:include page="item.jsp">
				<jsp:param name="name" value="Backend" />
				<jsp:param name="img" value="anh7.jpg" />
			</jsp:include>
		</div>
		<div class="item">
			<jsp:include page="item.jsp">
				<jsp:param name="name" value="Tester" />
				<jsp:param name="img" value="anh8.jpg" />
			</jsp:include>
		</div>
		<div class="item">
			<jsp:include page="item.jsp">
				<jsp:param name="name" value="Admin" />
				<jsp:param name="img" value="anhnen.jpg" />
			</jsp:include>
		</div>
	</div>

	<script>
    const toggleBtn = document.getElementById('toggleMode');
    const modeIcon = document.getElementById('modeIcon');

    function updateIcon() {
        modeIcon.textContent = document.body.classList.contains('dark-mode') ? '🌞' : '🌙';
    }

    toggleBtn.addEventListener('click', () => {
        document.body.classList.toggle('dark-mode');
        localStorage.setItem('theme', document.body.classList.contains('dark-mode') ? 'dark' : 'light');
        updateIcon();
    });

    window.addEventListener('DOMContentLoaded', () => {
        if (localStorage.getItem('theme') === 'dark') {
            document.body.classList.add('dark-mode');
        }
        updateIcon();
    });
</script>

</body>
</html>
