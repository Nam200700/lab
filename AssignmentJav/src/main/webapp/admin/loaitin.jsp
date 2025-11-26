<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Quản lý loại tin</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loaitin.css">
</head>
<body>
<div class="crud-container">
    
    <h2><i class="fa fa-tag"></i> Quản Lý Loại Tin</h2>

    <div class="crud-form">
        <h3>Thông Tin Loại Tin</h3>
        <form action="#" method="post">
            
            <div class="form-group">
                <label for="id">Mã loại tin:</label>
                <input type="text" id="id" name="id" required maxlength="4">
            </div>

            <div class="form-group">
                <label for="name">Tên loại tin:</label>
                <input type="text" id="name" name="name" required>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn-save">💾 Lưu</button>
            </div>
        </form>
    </div>
    
    <div class="crud-table">
        <h3>Danh Sách Loại Tin</h3>
        <table>
            <thead>
                <tr>
                    <th style="width: 20%;">Mã loại tin</th>
                    <th>Tên loại tin</th>
                    <th style="width: 20%;">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="3" class="no-data">
                        Chưa có loại tin nào được thêm vào.
                    </td>
                </tr>
                <!-- Ví dụ dữ liệu -->
                <!--
                <tr>
                    <td>TS</td>
                    <td>Thời sự</td>
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
