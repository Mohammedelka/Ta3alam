package com.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CourseDao;
@WebServlet("/DeleteCourse")
public class DeleteCourse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseDao.delete(Integer.parseInt(request.getParameter("course_number")));
		response.sendRedirect("ViewCourse");
	}
}
