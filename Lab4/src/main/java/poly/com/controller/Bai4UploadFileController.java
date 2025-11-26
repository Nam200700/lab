package poly.com.controller;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/upload")
public class Bai4UploadFileController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("page", "Bai4UploadFile.jsp");
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Part photo = req.getPart("photo");
		String fileName = photo.getSubmittedFileName();
		
	    String uploadFolder = req.getServletContext().getRealPath("/static/files"); 
	    
	    File saveDir = new File(uploadFolder);
	    if (!saveDir.exists()) {
	        saveDir.mkdirs(); // Tạo thư mục nếu nó chưa có
	    }
	 
	    String finalPath = uploadFolder + File.separator + fileName;
	    photo.write(finalPath);
	    
	    req.setAttribute("message", "File " + fileName + " đã được upload thành công!"); 
	    
	    req.setAttribute("page", "Bai4UploadFile.jsp");
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	    //req.getRequestDispatcher("Bai4UploadFile.jsp").forward(req, resp);
		
		/*
		Part photo = req.getPart("photo");
		String path = "/static/files/" + photo.getSubmittedFileName();
		String filename = req.getServletContext().getRealPath(path);
		photo.write(filename);
		req.getRequestDispatcher("Bai4UploadFile.jsp").forward(req, resp);*/
	}

}
