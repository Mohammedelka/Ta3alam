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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
import com.beans.CourseBean;
import com.beans.EnrollCourseBean;
import com.beans.ReviewBean;
import com.dao.CourseDao;
import com.dao.EnrollCourseDao;
import com.dao.StudentDao;

@WebServlet("/LearnerEnroll")
public class LearnerEnroll extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			request.getRequestDispatcher("index.html").include(request, response);
		}
		String userName = StudentDao.getUsernameFromEmail(email);
		int course_number = Integer.parseInt(request.getParameter("course_number"));
		CourseBean course = CourseDao.getCourse(course_number);
		// Course Name
		String course_name = course.getCourse_name();
		// Date of enroll
		Date date = Calendar.getInstance().getTime();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String enrollDate = dateFormat.format(date);
		// learning Date
		String learningStatus = "enrolled";

		EnrollCourseBean enrollCourse = new EnrollCourseBean(null, email, userName, String.valueOf(course_number),
				course_name, enrollDate, learningStatus);

		EnrollCourseDao.save(enrollCourse);
		response.sendRedirect(
				"/CourseManagementSystem/ViewCourseLearner?course_number=" + request.getParameter("course_number")+"#enroll");

	}

}
