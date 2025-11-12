package poly.com.controler;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/bai3","/nv/insert","/nv/delete","/nv/update","/nv/find"})

public class Bai3controler extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("bai3.jsp").forward(req, resp);
	}
	
 	@Override
 	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 		String url = req.getRequestURI();
 		
 		if (url.contains("/nv/insert")) {
			resp.getWriter().print("<h1>insert data<h1>");
		}
 		else if (url.contains("/nv/delete")) {
			resp.getWriter().print("<h1>delete data<h1>");
		}
 		else if (url.contains("/nv/update")) {
			resp.getWriter().print("<h1>update data<h1>");
		}
 		else {
			resp.getWriter().print("<h1>find data<h1>");
		}
 	}
	
}
