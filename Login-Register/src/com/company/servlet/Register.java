package com.company.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.dao.*;


@WebServlet("/Register")
public class Register extends HttpServlet {       
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserImp();
	
	public Register() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");


        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);
        user.setGender(gender);


        //UserDao userDao = new UserDaoImpl();
		if (userDao.addUser(user)) {
            response.sendRedirect("login.jsp?registration=success");
        } else {
            response.sendRedirect("register.jsp?error=1");
        }
    }
	
}