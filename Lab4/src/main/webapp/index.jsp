<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 4</title>
</head>
<body>
	<img alt="Logo" src="img/logofpt.png">
    <jsp:include page="menu.jsp"></jsp:include>

    <div class="content" style="min-height:400px; text-align:left;">
        <%
            // Lấy thuộc tính "page" từ request
            String includePage = (String) request.getAttribute("page");
            
            // KIỂM TRA: Nếu Controller đã set thuộc tính "page" (người dùng đã click vào bài tập)
            if (includePage != null && !includePage.isEmpty()) {
        %>
            <jsp:include page="<%= includePage %>" />
        <%
            } else {
        %>
            <h2>!</h2>
        <%
            }
        %>
    </div>

    <div class="footer">
    </div>
	
	
</body>
</html>