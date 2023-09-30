package com.servlets;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.CourseBean;
import com.beans.InstructorBean;
import com.dao.CourseDao;
import com.dao.InstructorDao;
@WebServlet("/ViewCourses")
public class ViewCourses extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CourseBean> courses=CourseDao.view();
		request.setAttribute("courses", courses);
        this.getServletContext().getRequestDispatcher("/WEB-INF/LearnerCourseList.jsp").forward(request, response);
		request.getRequestDispatcher("footer.html").include(request, response);
	}
}
