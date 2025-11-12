<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LAB 2 - Bài 1</title>
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

        h1 {
            color: #007bff;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .date-box {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <h2>-- BÀI 1 --</h2>
    <h1>${message}</h1> 
    <div class="date-box">
        Ngày trong tháng: ${now.date}
    </div>
</body>
</html>
