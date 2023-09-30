package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
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

@WebServlet("/ViewCourseLearner")
public class ViewOneCourseLearner extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CourseBean course = CourseDao.getCourse(Integer.parseInt(request.getParameter("course_number")));
		request.setAttribute("course", course);
		List<ReviewBean> reviews = ReviewDao.getReviews_Course(Integer.parseInt(request.getParameter("course_number")));
		request.setAttribute("reviews", reviews);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		String userName = StudentDao.getUsernameFromEmail(email);
		request.setAttribute("userName", userName);
		int ifEnroll = EnrollCourseDao.ifEnroll(Integer.toString(course.getCourse_number()), email);
		request.setAttribute("ifEnroll", ifEnroll);
		String status = EnrollCourseDao.getStatus(Integer.toString(course.getCourse_number()), email);
		request.setAttribute("status", status);
		String videotitle = course.getCourse_video_title();
		String videolink = course.getCourse_video_link();
		request.setAttribute("videolink", videolink);
		request.setAttribute("videotitle", videotitle);

		this.getServletContext().getRequestDispatcher("/WEB-INF/Learner/coursePageLearner.jsp").forward(request,
				response);
		request.getRequestDispatcher("footer.html").include(request, response);
	}
}
