<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 3: Đọc tham số</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    .form-box {
        background: #fff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        width: 400px;
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .input-row {
        margin-bottom: 15px;
    }
    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #444;
    }
    input[type="text"], input[type="password"], select, textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }
    input[type="text"]:focus, input[type="password"]:focus, select:focus, textarea:focus {
        border-color: #007bff;
        outline: none;
    }
    .radio-group, .checkbox-group {
        margin-bottom: 15px;
    }
    .radio-group label, .checkbox-group label {
        display: inline-block;
        margin-right: 15px;
        font-weight: normal;
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
</style>
</head>
<body>
    <div class="form-box">
        <h1>Đăng Ký</h1>
        <form action="" method="post">
            
            <div class="input-row">
                <label for="username">Tên đăng nhập:</label>
                <input type="text" id="username" name="username">
            </div>

            <div class="input-row">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password"> 
            </div>
            
            <div class="radio-group">
                <label>Giới tính:</label>
                <input type="radio" id="male" name="gender" value="Nam"> 
                <label for="male">Nam</label>
                
                <input type="radio" id="female" name="gender" value="Nữ">
                <label for="female">Nữ</label>
            </div>
            
            <div class="checkbox-group">
                <label>Tình trạng:</label>
                <input type="checkbox" id="married" name="married"> 
                <label for="married">Đã có gia đình?</label>
            </div>

            <div class="input-row">
                <label for="country">Quốc tịch:</label>
                <select id="country" name="country">
                    <option value="Vietnam">Việt Nam</option>
                    <option value="United States">United States</option>
                    <option value="China">China</option>
                    <option value="Japan">Japan</option>
                    <option value="Other">Khác</option>
                </select>
            </div>
            
            <div class="checkbox-group">
                <label>Sở thích:</label>
                <input type="checkbox" id="read" name="hobby" value="Đọc sách">
                <label for="read">Đọc sách</label>
                
                <input type="checkbox" id="travel" name="hobby" value="Du lịch">
                <label for="travel">Du lịch</label>
                
                <input type="checkbox" id="music" name="hobby" value="Âm nhạc">
                <label for="music">Âm nhạc</label>
                
                <input type="checkbox" id="walk" name="hobby" value="Đi bộ">
                <label for="walk">Đi bộ</label>
                
                <input type="checkbox" id="other_hobby" name="hobby" value="Khác">
                <label for="other_hobby">Khác</label>
            </div>
            
            <div class="input-row">
                <label for="note">Ghi chú:</label>
                <textarea id="note" name="note" rows="3"></textarea>
            </div>

            <div>
                <button type="submit">Đăng ký</button>
            </div>
            
        </form>
    </div>
</body>
</html>
