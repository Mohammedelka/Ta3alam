package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userType = request.getParameter("userType");
		RequestDispatcher dispatcher = null;
		if (userType.equals("learner")) {
			 dispatcher = request.getRequestDispatcher("/StudentLogin");

		} else if (userType.equals("admin")) {
			 dispatcher = request.getRequestDispatcher("/AdminLogin");

		} else if(userType.equals("instructor")){
			 dispatcher = request.getRequestDispatcher("/InstructorLogin");

		}
		dispatcher.forward(request, response);


	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

}
