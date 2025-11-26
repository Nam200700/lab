<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 4: Upload file</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    .upload-box {
        background: #fff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        text-align: center;
        width: 350px;
    }
    h1 {
        margin-bottom: 20px;
        color: #333;
    }
    input[type="file"] {
        margin: 15px 0;
        padding: 8px;
    }
    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background: #007bff;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }
    button:hover {
        background: #0056b3;
    }
    h2 {
        margin-top: 20px;
        color: green;
    }
</style>
</head>
<body>
    <div class="upload-box">
        <h1>Upload File</h1>
        <c:url value="/upload" var="url"></c:url>
        <form action="${url}" method="post" enctype="multipart/form-data">
            <input name="photo" type="file">
            <button type="submit">Upload</button>
        </form>
        <h2>${message}</h2>
    </div>
</body>
</html>
