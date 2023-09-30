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
import com.beans.ReviewBean;
import com.dao.CourseDao;
import com.dao.ReviewDao;
import com.dao.StudentDao;

@WebServlet("/LearnerReview")
public class LearnerReview extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Student Section</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			request.getRequestDispatcher("index.html").include(request, response);
		}
		String comment = request.getParameter("comment");
		String userName = StudentDao.getUsernameFromEmail(email);
		int course_number = Integer.parseInt(request.getParameter("course_number"));
		String rating = request.getParameter("rating");
		ReviewBean bean = new ReviewBean();
		bean.setReviewText(comment);
		bean.setUserName(userName);
		bean.setRating(rating);
		bean.setCourse_number(course_number);
		request.getRequestDispatcher("footer.html").include(request, response);
		ReviewDao.save(bean);
		out.close();
	}

}
