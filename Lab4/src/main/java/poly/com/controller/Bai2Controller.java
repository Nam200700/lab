package poly.com.controller;

import java.io.IOException;
import java.net.http.HttpClient;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/bai2","/calculate/add", "/calculate/subtraction", "/calculate/multiplication", "/calculate/division"})
public class Bai2Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("message", "Nhap so va chon phep tinh");
		
		req.getRequestDispatcher("/Bai2.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a = req.getParameter("a");
		String b = req.getParameter("b");
		String path = req.getServletPath();
		if(path.endsWith("/add")) {
			double c = Double.valueOf(a) + Double.valueOf(b);
			req.setAttribute("message", a + " + " + b + " = " + c);
		}
		else if(path.endsWith("/subtraction")){
			double c = Double.valueOf(a) - Double.valueOf(b);
			req.setAttribute("message", a + " - " + b + " = " + c);
		}
		else if(path.endsWith("/multiplication")) {
			double c = Double.valueOf(a) * Double.valueOf(b);
			req.setAttribute("message", a + " * " + b + " = " + c);
		}
		else {
			double c = Double.valueOf(a) / Double.valueOf(b);
			req.setAttribute("message", a + " / " + b + " = " + c);
		}
		
		req.getRequestDispatcher("/Bai2.jsp").forward(req, resp);
	}

}
