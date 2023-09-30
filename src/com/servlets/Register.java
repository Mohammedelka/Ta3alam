package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.InstructorBean;
import com.beans.StudentBean;
import com.dao.InstructorDao;
import com.dao.StudentDao;

@WebServlet("/Register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Add Student </title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");

		request.getRequestDispatcher("navadmin.html").include(request, response);
		out.println("<div class='container'>");

		String userType = request.getParameter("userType");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String smobile = request.getParameter("mobile");
		StudentBean bean1 = new StudentBean(name, email, password, smobile);
		InstructorBean bean2 = new InstructorBean(name, email, password, smobile);
		if (userType == "learner") {
			StudentDao.save(bean1);
		} else {
			InstructorDao.save(bean2);

		}
		out.print("<h4>  added successfully</h4>");

		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}

}
