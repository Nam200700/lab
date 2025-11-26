<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Quản lý Newsletter</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Newsletter.css">
</head>
<body>
<div class="crud-container">
    
    <h2><i class="fa fa-envelope-open"></i> Quản Lý Đăng Ký Newsletter</h2>

    <div class="crud-form">
        <h3>Thông Tin Đăng Ký</h3>
        <form action="#" method="post">
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="enabled">Trạng thái:</label>
                <select id="enabled" name="enabled" required>
                    <option value="true">Còn hiệu lực</option>
                    <option value="false">Đã hủy/Khóa</option>
                </select>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn-save">💾 Lưu</button>
            </div>
        </form>
    </div>
    
    <div class="crud-table">
        <h3>Danh Sách Email Đăng Ký</h3>
        <table>
            <thead>
                <tr>
                    <th style="width: 40%;">Email nhận tin</th>
                    <th style="width: 20%;">Trạng thái</th>
                    <th style="width: 20%;">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="3" class="no-data">
                        Chưa có email nào đăng ký.
                    </td>
                </tr>
                <!-- Ví dụ dữ liệu -->
                <!--
                <tr>
                    <td>abc@example.com</td>
                    <td>Còn hiệu lực</td>
                    <td>
                        <a href="#" class="btn-action btn-edit">Sửa</a>
                        <a href="#" class="btn-action btn-delete">Xóa</a>
                    </td>
                </tr>
                -->
            </tbody>
        </table>
    </div>

</div>
</body>
</html>
