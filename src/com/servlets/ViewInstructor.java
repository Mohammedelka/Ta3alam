package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.InstructorBean;
import com.dao.InstructorDao;

@WebServlet("/ViewInstructor")
public class ViewInstructor extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>View Instructor</title>");
		out.println("<style> .big{ font-size :16px ;}</style>");

		out.println("</head>");
		out.println("<body>");

		request.getRequestDispatcher("navadmin.html").include(request, response);
		out.println("<div class='big'>");

		List<InstructorBean> list = InstructorDao.view();

		out.println("<table class='table table-bordered table-striped'>");
		out.println(
				"<tr><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>Mobile</th><th>Edit</th><th>Delete</th></tr>");
		for (InstructorBean bean : list) {
			out.println("<tr><td>" + bean.getId() + "</td><td>" + bean.getName() + "</td><td>" + bean.getEmail()
					+ "</td><td>" + bean.getPassword() + "</td><td>" + bean.getMobile()
					+ "</td><td><a href='EditInstructorForm?id=" + bean.getId()
					+ "'>Edit</a></td><td><a href='DeleteInstructor?id=" + bean.getId() + "'>Delete</a></td></tr>");
		}
		out.println("</table>");

		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();

	}
}
