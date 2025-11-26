<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 2</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background: #fff;
        padding: 25px 35px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        width: 320px;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    label {
        font-weight: bold;
        color: #444;
    }
    input[type="text"], input[name="a"], input[name="b"] {
        width: 100%;
        padding: 8px;
        margin: 8px 0 16px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button {
        width: 48%;
        padding: 10px;
        margin: 5px 1%;
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
    .result {
        margin-top: 15px;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Máy tính đơn giản</h2>
        <c:url value="/calculate" var="cal"></c:url>
        
        <form method="post">
            <label>Số a:</label>
            <input name="a"> 
            
            <label>Số b:</label>
            <input name="b"> 
            
            <div>
                <button formaction="${cal}/add">+</button>
                <button formaction="${cal}/subtraction">-</button>
                <button formaction="${cal}/multiplication">*</button>
                <button formaction="${cal}/division">/</button>
            </div>
        </form>
        
        <div class="result">
            <label>Kết quả:</label>
            <input type="text" readonly value="${message}">
        </div>
    </div>
</body>
</html>
