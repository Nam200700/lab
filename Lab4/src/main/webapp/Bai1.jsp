<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .login-box {
        background: #fff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        width: 320px;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0 20px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        background: #007bff;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }
    button:hover {
        background: #0056b3;
    }
    .message {
        margin-top: 15px;
        text-align: center;
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="login-box">
        <h2>Đăng nhập</h2>
        <c:url value="/login" var="url"></c:url>
        <form action="${url}" method="post">
            <input name="username" type="text" placeholder="Tên đăng nhập">
            <input name="password" type="password" placeholder="Mật khẩu">
            <button>Login</button>
        </form>
        <div class="message">${message}</div>
    </div>
</body>
</html>
