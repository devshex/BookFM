package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.BookDAOImpl;
import com.db.DBConnect;
import com.entity.BookDtls;


@WebServlet("/add_vintage_book")
@MultipartConfig
public class AddVintageBook extends HttpServlet{
       
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String narrator = req.getParameter("narrator");
			String description = req.getParameter("description");
			Double price = Double.parseDouble(req.getParameter("price"));
			String categories = "Vintage";
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();
			
			String useremail = req.getParameter("user");
			
			BookDtls b = new BookDtls(bookName,narrator,description,price,categories,fileName,useremail);
			
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			
			boolean f = dao.addBooks(b);
			
			HttpSession session = req.getSession();
			
			
			if(f) {
				
				String path = getServletContext().getRealPath("") + "Book";
				
				File file = new File(path);
				
				part.write(path + File.separator + fileName);
				session.setAttribute("succMsg", "Book added successfully");
				resp.sendRedirect("sell_book.jsp");
			}else {
				session.setAttribute("failedMsg", "something went wrong on server");
				resp.sendRedirect("sell_book.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
