package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

@WebServlet("/ViewOneCourse")
public class ViewOneCourse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CourseBean course = CourseDao.getCourse(Integer.parseInt(request.getParameter("course_number")));
		request.setAttribute("course", course);
		List<ReviewBean> reviews = ReviewDao.getReviews_Course(Integer.parseInt(request.getParameter("course_number")));
		request.setAttribute("reviews", reviews);
		int enrolled = EnrollCourseDao.getNumberLearners(Integer.parseInt(request.getParameter("course_number")),
				"enrolled");
		int completed = EnrollCourseDao.getNumberLearners(Integer.parseInt(request.getParameter("course_number")),
				"completed");
		int Nbrlearners=StudentDao.getNumberLearners();
		request.setAttribute("enrolled", enrolled);
		request.setAttribute("completed", completed);
		request.setAttribute("Nbrlearners", Nbrlearners);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			request.getRequestDispatcher("index.html").include(request, response);
		}
		String InstructorUserName = InstructorDao.getUsernameFromEmail(email);
		request.setAttribute("InstructorUserName", InstructorUserName);
		this.getServletContext().getRequestDispatcher("/WEB-INF/coursepage.jsp").forward(request, response);
	}
}
