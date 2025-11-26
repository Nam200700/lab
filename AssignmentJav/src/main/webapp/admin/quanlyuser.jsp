<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý người dùng</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/quanlyuser.css">
</head>
<body>
    <header>Quản lý người dùng</header>

    <div class="container">
        <!-- Bảng danh sách người dùng -->
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Email</th>
                    <th>Vai trò</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Nguyễn Văn A</td>
                    <td>a@example.com</td>
                    <td>Admin</td>
                    <td>
                        <a href="#" class="btn btn-primary">Sửa</a>
                        <a href="#" class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Trần Thị B</td>
                    <td>b@example.com</td>
                    <td>User</td>
                    <td>
                        <a href="#" class="btn btn-primary">Sửa</a>
                        <a href="#" class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Form thêm/sửa người dùng -->
        <div class="form-section">
            <h2>Thêm/Sửa người dùng</h2>
            <form>
                <div class="form-group">
                    <label for="name">Tên:</label>
                    <input type="text" id="name" name="name" placeholder="Nhập tên người dùng">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Nhập email">
                </div>
                <div class="form-group">
                    <label for="role">Vai trò:</label>
                    <select id="role" name="role">
                        <option value="Admin">Admin</option>
                        <option value="User">User</option>
                        <option value="Manager">Manager</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Lưu</button>
            </form>
        </div>
    </div>
</body>
</html>
