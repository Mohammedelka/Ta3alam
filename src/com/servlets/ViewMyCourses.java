package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.CourseBean;
import com.beans.InstructorBean;
import com.beans.ReviewBean;
import com.dao.CourseDao;
import com.dao.EnrollCourseDao;
import com.dao.InstructorDao;
import com.dao.ReviewDao;
import com.dao.StudentDao;

@WebServlet("/MyCourses")
public class ViewMyCourses extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		RequestDispatcher dispatcher = null;
		if (email == null) {
			dispatcher = request.getRequestDispatcher("index.html");
		}
		List<CourseBean> courses = CourseDao.searchByInstructor(email);
		request.setAttribute("courses", courses);
		
		if (email != null) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/Learner/mycourses.jsp");
		}
		dispatcher.forward(request, response);
		out.close();
	}
}
