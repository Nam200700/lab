package poly.com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Bai1Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("message", "");
		
		req.setAttribute("page", "Bai1.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		//req.getRequestDispatcher("/Bai1.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if(username.equalsIgnoreCase("Tinh") && password.equals("123")) {
			req.setAttribute("message", "Login successfully");
		}
		else {
			req.setAttribute("message", "Invalid username or password");
		}
		
		req.setAttribute("page", "Bai1.jsp");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		//req.getRequestDispatcher("/Bai1.jsp").forward(req, resp);
	}

}
