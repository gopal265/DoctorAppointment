package com.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;
import com.model.User;

@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
		try {
			
			User user = new User(fullName, email,phoneNumber, password);

			UserDAO userDAO = new UserDAO();
			int result = userDAO.userRegister(user);
			
			if (result == 0 ) {
				
				RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
				rd.forward(request,response);
			

			} else {
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request,response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
