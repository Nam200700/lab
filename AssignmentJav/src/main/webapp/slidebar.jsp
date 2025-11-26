<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="css/slidebar.css">
<aside class="sidebar">
    <div class="widget hot-news">
        <h3>5 bản tin được xem nhiều</h3>
        <ul>
            <li><a href="detail.jsp?id=hot1">Tin hot nhất 1</a></li>
            <li><a href="detail.jsp?id=hot2">Tin hot nhất 2</a></li>
            <li><a href="detail.jsp?id=hot3">Tin hot nhất 3</a></li>
            <li><a href="detail.jsp?id=hot4">Tin hot nhất 4</a></li>
            <li><a href="detail.jsp?id=hot5">Tin hot nhất 5</a></li>
        </ul>
    </div>

    <div class="widget new-news">
        <h3>5 bản tin mới nhất</h3>
        <ul>
            <li><a href="detail.jsp?id=new1">Tin mới 1</a></li>
            <li><a href="detail.jsp?id=new2">Tin mới 2</a></li>
            <li><a href="detail.jsp?id=new3">Tin mới 3</a></li>
            <li><a href="detail.jsp?id=new4">Tin mới 4</a></li>
            <li><a href="detail.jsp?id=new5">Tin mới 5</a></li>
        </ul>
    </div>

    <div class="widget viewed-news">
        <h3>5 bản tin đã bạn đã xem</h3>
        <ul>
            <li><a href="detail.jsp?id=view1">Tin đã xem 1</a></li>
            <li><a href="detail.jsp?id=view2">Tin đã xem 2</a></li>
            <li><a href="detail.jsp?id=view3">Tin đã xem 3</a></li>
            <li><a href="detail.jsp?id=view4">Tin đã xem 4</a></li>
            <li><a href="detail.jsp?id=view5">Tin đã xem 5</a></li>
        </ul>
    </div>

    <div class="widget newsletter">
        <h3>Đăng ký Newsletter</h3>
        <p>Nhập email để nhận tin mới nhất từ ABC News.</p>
        <form action="newsletter-register" method="POST">
            <input type="email" name="email" placeholder="Email nhận bản tin" required>
            <button type="submit">Đăng ký</button>
        </form>
    </div>
</aside>