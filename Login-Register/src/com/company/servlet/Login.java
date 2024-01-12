package com.company.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.dao.UserDao;
import com.company.dao.UserImp;

@WebServlet("/LoginPage")
public class Login extends HttpServlet {   
	private static final long serialVersionUID = 1L;
	private static UserDao userDao=new UserImp();
    public Login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		 String email = request.getParameter("email");
	     String password = request.getParameter("password");

	        if (userDao.isValidUser(email, password)) {
	            HttpSession session = request.getSession();
	            session.setAttribute("email", email);
	            response.sendRedirect("Welcome.jsp");
	            //System.out.println("Hi - "+username);
	        } else {
	            response.sendRedirect("login.jsp?error=1");
	        	System.out.println("Error A gya");
	        }
	        
	        
//	        if(password.equals("123")) {
//	        	response.sendRedirect("Welcome.jsp");
//	        }else {
//	        	response.sendRedirect("login.jsp?error=1");
//	        	System.out.println("Error");
//	        }
	}

}
