package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter ("fname");
			String email=req.getParameter("email");
			String phone_no=req.getParameter("phone_no");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			//System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhone_no(phone_no);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			
			if(check!=null)
			{
				UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
				boolean f=dao.userRegister(us);
				if(f)
				{
				//System.out.println("User Register Success..");
					session.setAttribute("succMsg", "Registration Successful");
					resp.sendRedirect("Register.jsp");
				}else {
				//System.out.println("Something wrong on server..");
					session.setAttribute("failedMsg", "Something wrong on server");
					resp.sendRedirect("Register.jsp");
				}
			}else {
				//System.out.println("Please Agree to terms and conditions");
				session.setAttribute("failedMsg", "Please Agree to terms and conditions");
				resp.sendRedirect("Register.jsp");
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
			}
	}
	
	

}
