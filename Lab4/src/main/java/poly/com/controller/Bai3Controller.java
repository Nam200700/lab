package poly.com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Registration")
public class Bai3Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.setAttribute("page", "Bai3Form.jsp");
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");
		String married = req.getParameter("married");
		String country = req.getParameter("country");
		String note = req.getParameter("note");
		String[] hobbies = req.getParameterValues("hobby");
		
		System.out.println("Tên đăng nhập: " + username);
        System.out.println("Mật khẩu: " + password);
        System.out.println("Giới tính: " + gender);
        System.out.println("Đã có gia đình?: " + (married != null ? married : "Không"));
        System.out.println("Quốc tịch: " + country);
               
        if (hobbies != null) {
            System.out.print("Sở thích: ");
            for (int i = 0; i < hobbies.length; i++) {
                System.out.print(hobbies[i] + (i < hobbies.length - 1 ? ", " : ""));
            }
            System.out.println(); 
        } else {
            System.out.println("Sở thích: Không có sở thích nào được chọn.");
        }
        
        System.out.println("Ghi chú: " + note);
        
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().println("<h1>Đăng ký thành công!</h1>");
        resp.getWriter().println("<a href='Bai3Form.jsp'>Quay lại form</a>");
	}

}
