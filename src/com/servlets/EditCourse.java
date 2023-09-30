package com.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.CourseBean;
import com.dao.CourseDao;
import com.dao.InstructorDao;
import com.dao.StudentDao;

@WebServlet("/EditCourse")
public class EditCourse extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// Course number

		int course_number=Integer.parseInt(request.getParameter("course_number"));

		String course_name = request.getParameter("course_name");
		// Course image

		String course_image = request.getParameter("course_image");
		String course_description = request.getParameter("course_description");
		// instructor
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			request.getRequestDispatcher("index.html").include(request, response);
		}
		String InstructorUserName = InstructorDao.getUsernameFromEmail(email);
		// video content

		String course_video_title = request.getParameter("course_video_title");
		String course_video_link = request.getParameter("course_video_link");

		CourseBean bean = new CourseBean(course_number, course_name, InstructorUserName, course_image, course_description,
				course_video_title,course_video_link);
		int i = CourseDao.edit(bean);
		if (i > 0) {
			out.println("<style>\r\n" + ".alert {\r\n" + "	position: absolute !important;\r\n" + "	top: 40;\r\n"
					+ "    right: 100px;\r\n" + "    width: 80%;\r\n" + "    z-index: 10000;\r\n"
					+ "    height: 150;\r\n" + "}</style><div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  <h4 class=\"alert-heading\">Well done!</h4>\r\n"
					+ "  <p>Aww yeah, you successfully edit your  Course .</p>\r\n" + "  <hr>\r\n"
					+ "  <p class=\"mb-0\">Now,You can go to Course list to view changes.</p>\r\n" + "</div>");
		}
		request.getRequestDispatcher("ViewCourse").include(request, response);

		out.close();
	}

}
