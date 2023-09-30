package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.InstructorDao;

@WebServlet("/AddCourseForm")
public class AddCourseForm extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("form_Action", "AddCourse");
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			request.getRequestDispatcher("index.html").include(request, response);
		}
		String InstructorUserName = InstructorDao.getUsernameFromEmail(email);
		request.setAttribute("InstructorUserName", InstructorUserName);
		request.getRequestDispatcher("addcourseform.jsp").include(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
