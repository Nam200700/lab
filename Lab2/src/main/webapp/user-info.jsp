<%-- user-info.jsp: CHỈ CHỨA NỘI DUNG --%>
<%@ page pageEncoding="utf-8" %>
<style>
    .user-info-title {
        font-size: 20px;
        font-weight: bold;
        color: #007bff;
        margin-bottom: 10px;
    }

    .user-info-list {
        list-style: none;
        padding: 0;
        font-size: 16px;
        color: #333;
    }

    .user-info-list li {
        background-color: #f8f9fa;
        border: 1px solid #ddd;
        padding: 10px;
        margin-bottom: 8px;
        border-radius: 6px;
    }
</style>

<div class="user-info">
    <div class="user-info-title">YOUR INFORMATION:</div>
    <ul class="user-info-list">
        <li>Fullname: ${user.fullname}</li>
        <li>Gender: ${user.gender}</li>
        <li>Country: ${user.country}</li>
    </ul>
</div>
