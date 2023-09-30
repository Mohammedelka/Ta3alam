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

@WebServlet("/ViewCourse")
public class ViewCourse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		List<CourseBean> courses = CourseDao.view();
		request.setAttribute("courses", courses);
		List<ReviewBean> reviews = ReviewDao.getReviews();
		request.setAttribute("reviews", reviews);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		RequestDispatcher dispatcher = null;
		if (email == null) {
			dispatcher = request.getRequestDispatcher("index.html");
		}
		String InstructorUserName = InstructorDao.getUsernameFromEmail(email);
		request.setAttribute("InstructorUserName", InstructorUserName);

		request.setAttribute("NbrCourses", CourseDao.getNumberCourses(InstructorUserName));
		request.setAttribute("NbrLearners", StudentDao.getNumberLearners());
		request.setAttribute("NbrEnrolled", EnrollCourseDao.getNumberLearner("enrolled"));
		request.setAttribute("NbrCompleted", EnrollCourseDao.getNumberLearner("completed"));
		if (email != null) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/instructorpage.jsp");
		}
		dispatcher.forward(request, response);
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
}
