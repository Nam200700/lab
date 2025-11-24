<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Model.Cart"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 70%;
	border-collapse: collapse;
	margin: 25px auto;
	font-family: Arial, sans-serif;
	font-size: 15px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
}

th, td {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: center;
}

th {
	background-color: #007bff;
	color: #fff;
	font-weight: 600;
	letter-spacing: 0.5px;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #eef6ff;
	transition: background-color 0.2s ease;
}

/* Nút xóa */
.delete-btn {
	padding: 6px 12px;
	background-color: #dc3545;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	font-size: 14px;
	transition: background-color 0.2s ease, transform 0.2s ease;
}

.delete-btn:hover {
	background-color: #c82333;
	transform: scale(1.05);
}
</style>
</head>
<body>
	<jsp:include page="index.jsp" />

	<h2 style="text-align: center;">Giỏ Hàng Của Bạn</h2>

	<%
	Map<String, Cart> cart = (Map<String, Cart>) session.getAttribute("cart");
	if (cart == null || cart.isEmpty()) {
	%>
	<p style="text-align: center;">Giỏ hàng đang trống!</p>
	<%
	} else {
	%>
	<table>
		<tr>
			<th>Tên sản phẩm</th>
			<th>Giá</th>
			<th>Số lượng</th>
			<th>Tổng tiền</th>
			<th>Hành động</th>
		</tr>
		<%
		double grandTotal = 0;
		for (Cart item : cart.values()) {
			double total = item.getPrice() * item.getQuantity();
			grandTotal += total;
		%>
		<tr>
			<td><%=item.getName()%></td>
			<td>$<%=item.getPrice()%></td>
			<td><%=item.getQuantity()%></td>
			<td>$<%=total%></td>
			<td>
				<form action="cartController" method="post" style="margin: 0;">
					<input type="hidden" name="action" value="delete"> <input
						type="hidden" name="productId" value="<%=item.getId()%>">
					<input type="submit" class="delete-btn" value="Xóa">
				</form>
			</td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="4" style="text-align: right;"><strong>Tổng
					cộng:</strong></td>
			<td><strong>$<%=grandTotal%></strong></td>
		</tr>
	</table>
	<%
	}
	%>
</body>
</html>