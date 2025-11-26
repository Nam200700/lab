package controller;

import java.io.IOException;
import java.sql.Connection;

import DAO.UserDAO;
import Entity.User;
import Util.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ "/login", "/register", "/logout" })
public class UserServlet extends HttpServlet {
	private UserDAO dao;

	@Override
	public void init() throws ServletException {
		try {
			Connection conn = DBConnection.getConnection();
			dao = new UserDAO(conn);
		} catch (Exception e) {
			throw new ServletException("Không thể kết nối MySQL", e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.endsWith("/login")) {
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		} else if (uri.endsWith("/register")) {
			req.getRequestDispatcher("register.jsp").forward(req, resp);
		} else if (uri.endsWith("/logout")) {
			req.getSession().invalidate();
			resp.sendRedirect(req.getContextPath() + "/login");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		try {
			if (uri.endsWith("/login")) {
				String email = req.getParameter("email");
				String password = req.getParameter("password");

				User u = dao.findByEmail(email);
				if (u != null && u.getPassword().equals(password)) {
					req.getSession().setAttribute("currentUser", u);

					// Nếu role là reader thì chuyển sang trang reader
					if ("reader".equalsIgnoreCase(u.getRole())) {
						resp.sendRedirect(req.getContextPath() + "/index.jsp");
					} else if ("admin".equalsIgnoreCase(u.getRole())) {
						resp.sendRedirect(req.getContextPath() + "/admin");
					} else {
						// fallback: nếu role khác thì về trang chủ
						resp.sendRedirect(req.getContextPath() + "/");
					}
				} else {
					req.setAttribute("error", "Sai email hoặc mật khẩu!");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}

			} else if (uri.endsWith("/register")) {
				String fullname = req.getParameter("fullname");
				String email = req.getParameter("email");
				String password = req.getParameter("password");
				String confirm = req.getParameter("confirmPassword");

				// Kiểm tra confirm password
				if (!password.equals(confirm)) {
					req.setAttribute("error", "Mật khẩu xác nhận không khớp!");
					req.getRequestDispatcher("register.jsp").forward(req, resp);
					return;
				}

				// Kiểm tra email trùng
				if (dao.findByEmail(email) != null) {
					req.setAttribute("error", "Email đã được sử dụng!");
					req.getRequestDispatcher("register.jsp").forward(req, resp);
				} else {
					User u = new User();
					u.setFullname(fullname);
					u.setEmail(email);
					u.setPassword(password);
					u.setRole("reader"); // mặc định reader
					dao.insert(u);
					resp.sendRedirect(req.getContextPath() + "/login");
				}
			}
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
