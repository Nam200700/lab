<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.cart-icon {
	position: fixed;
	top: 10px;
	right: 20px;
	background: #fff;
	padding: 10px 15px;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
	font-size: 18px;
	z-index: 999;
	transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.cart-icon:hover {
	transform: scale(1.05);
	box-shadow: 0 6px 16px rgba(0, 0, 0, 0.25);
}

.cart-icon a {
	text-decoration: none;
	color: #000;
	font-weight: bold;
}

.cart-count {
	color: #dc3545;
	font-weight: bold;
	margin-left: 5px;
}

/* Menu chính */
.exercises-menu {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	gap: 20px;
	margin-top: 30px;
}

.exercise-card {
	border: 1px solid #007bff;
	padding: 20px;
	text-align: center;
	width: 250px;
	box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.1);
	text-decoration: none;
	color: #007bff;
	border-radius: 10px;
	background: #f9f9f9;
	transition: transform 0.25s ease, box-shadow 0.25s ease;
}

.exercise-card:hover {
	transform: translateY(-5px);
	box-shadow: 4px 8px 18px rgba(0, 0, 0, 0.2);
	background: #eef6ff;
}

.exercise-card h3 {
	margin-top: 0;
	color: #333;
	font-size: 20px;
}

/* Bảng */
table {
	width: 85%;
	border-collapse: collapse;
	margin: 30px auto;
	font-size: 15px;
}

th, td {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: center;
}

th {
	background-color: #007bff;
	color: white;
	letter-spacing: 0.5px;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f1f7ff;
}

/* Hình ảnh */
img {
	width: 100px;
	height: auto;
	border-radius: 6px;
	transition: transform 0.2s ease;
}

img:hover {
	transform: scale(1.1);
}

/* Nút thêm */
.add-btn {
	padding: 6px 12px;
	background-color: #28a745;
	color: white;
	border: none;
	cursor: pointer;
	border-radius: 6px;
	font-size: 14px;
	transition: background-color 0.2s ease, transform 0.2s ease;
}

.add-btn:hover {
	background-color: #218838;
	transform: scale(1.05);
}
</style>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>


	<div class="cart-icon">
		<%-- Sửa link giỏ hàng trỏ về cart.jsp --%>
		<a href="cart.jsp">🛒 Giỏ hàng <span class="cart-count"> <c:out
					value="${fn:length(sessionScope.cart)}" />
		</span>
		</a>
	</div>

	<%
	// Giả lập danh sách sản phẩm có hình ảnh
	class Product {
		String id;
		String name;
		double price;
		String description;
		String image;

		Product(String id, String name, double price, String description, String image) {
			this.id = id;
			this.name = name;
			this.price = price;
			this.description = description;
			this.image = image;
		}
	}

	List<Product> productList = new ArrayList<>();
	productList.add(new Product("P001", "Rolex Submariner", 15000.0,
			"Đồng hồ lặn thể thao biểu tượng, vành xoay đơn hướng, chống nước cao.", "img/rolex.webp"));
	productList.add(new Product("P002", "Day-Date (President)", 17000.0,
			"Chỉ làm bằng kim loại quý (vàng hoặc bạch kim), hiển thị ngày trong tuần đầy đủ và ngày, đi kèm dây President đặc trưng.",
			"img/ROLEX1.jpg"));
	productList.add(new Product("P003", "Rolex Datejust", 25000.0,
			"Đồng hồ cổ điển, hiển thị ngày, rất đa dạng về chất liệu (thép, Rolesor) và kích cỡ. Thường có Vành Khía (Fluted Bezel) và kính Cyclops.",
			"img/ROLEX10.jpg"));
	productList.add(new Product("P004", "Rolex Cosmograph Daytona", 30000.0,
			"Đồng hồ bấm giờ (Chronograph) nổi tiếng, thiết kế thể thao, thường được tìm kiếm nhất. Vành tachymeter và 3 mặt số phụ.",
			"img/ROLEX10.jpg"));
	productList.add(new Product("P005", "Rolex GMT-Master II", 40000.0,
			"Đồng hồ phi công, hiển thị hai múi giờ cùng lúc. Nổi tiếng với vành Bezel hai tông màu (ví dụ: Pepsi - xanh/đỏ, Batman - xanh/đen).",
			"img/ROLEX12.png"));
	productList.add(new Product("P006", "Rolex Explorer", 120000.0,
			"Đồng hồ thám hiểm/leo núi, đơn giản, mạnh mẽ và dễ đọc. Nổi bật với mặt số đen và các cọc số 3, 6, 9 lớn.",
			"img/ROLEX13.jpg"));
	productList.add(new Product("P007", "Rolex Explorer II:", 20000.0,
			"Đồng hồ thám hiểm chuyên nghiệp, có thêm kim GMT màu cam/đỏ và vành cố định 24 giờ để phân biệt ngày/đêm.",
			"img/rolex14.jpg"));
	productList.add(new Product("P008", "Rolex Sea-Dweller / Deepsea", 300000.0,
			"Đồng hồ thám hiểm chuyên nghiệp, có thêm kim GMT màu cam/đỏ và vành cố định 24 giờ để phân biệt ngày/đêm.",
			"img/ROLEX2.jpg"));
	productList.add(new Product("P009", "Rolex Yacht-Master", 22000.0,
			"Đồng hồ thể thao sang trọng lấy cảm hứng từ du thuyền, thường có vành xoay bằng bạch kim hoặc Cerachrom.",
			"img/ROLEX3.jpg"));
	productList.add(new Product("P010", "Rolex Yacht-Master II", 23000.0,
			"Đồng hồ đua thuyền phức tạp, có tính năng đếm ngược lập trình được (Regatta Chronograph).", "img/ROLEX4.jpg"));
	productList.add(new Product("P011", "Tai nghe Sony", 28000.0,
			"Đồng hồ kháng từ trường, đặc trưng với kim giây hình tia sét. Thường có kính màu xanh lá (Green Crystal).",
			"img/ROLEX5.jpg"));
	productList.add(new Product("P012", "Rolex Milgauss", 125000.0,
			"Đồng hồ phức tạp (Complication) nhất của Rolex, hiển thị hai múi giờ và lịch thường niên (Annual Calendar).",
			"img/ROLEX6.jpg"));
	%>

	<h2 style="text-align: center;">Danh sách sản phẩm</h2>

	<table>
		<tr>
			<th>Hình ảnh</th>
			<th>Tên sản phẩm</th>
			<th>Giá</th>
			<th>Mô tả</th>
			<th>Thêm vào giỏ</th>
		</tr>
		<%
		for (Product p : productList) {
		%>
		<tr>
			<td><img src="<%=p.image%>" alt="<%=p.name%>"></td>
			<td><%=p.name%></td>
			<td>$<%=p.price%></td>
			<td><%=p.description%></td>
			<td>
				<form action="cartController" method="post">
					<input type="hidden" name="productId" value="<%=p.id%>"> <input
						type="hidden" name="productName" value="<%=p.name%>"> <input
						type="hidden" name="productPrice" value="<%=p.price%>"> <input
						type="submit" class="add-btn" value="Thêm vào giỏ">
				</form>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>