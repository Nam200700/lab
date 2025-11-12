<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LAB 2 - Bài 2</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 40px;
            color: #333;
            text-align: center;
        }

        h2 {
            color: #555;
            margin-bottom: 10px;
        }

        .message {
            font-size: 24px;
            color: #007bff;
            margin-bottom: 30px;
        }

        .user-info-box {
            display: inline-block;
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>-- BÀI 2 --</h2>
    <div class="message">${message}</div>

    <div class="user-info-box">
        <jsp:include page="/user-info.jsp"/>
    </div>
</body>
</html>
