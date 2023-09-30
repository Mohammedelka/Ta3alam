package com.servlets;

import java.io.*;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.beans.CourseBean;
import com.dao.CourseDao;
import com.dao.InstructorDao;
import com.oreilly.servlet.MultipartRequest;

@WebServlet(name = "UploadServlet", urlPatterns = { "/uploadservlet" })
public class UploadServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		MultipartRequest m = new MultipartRequest(request,
				"C:\\Users\\HP\\Desktop\\Course management system\\WebContent\\images");
		String uploadedfilename = m.getFilesystemName("fname");
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		if (email == null) {
			request.getRequestDispatcher("index.html").include(request, response);
		}
		String InstructorUserName = InstructorDao.getUsernameFromEmail(email);
		request.setAttribute("InstructorUserName", InstructorUserName);		CourseBean course = null;
		if (request.getParameter("course_number") != null) {
			course = CourseDao.getCourse(Integer.parseInt(request.getParameter("course_number")));
			request.setAttribute("course", course);
			request.setAttribute("form_Action", "EditCourse");
		}
		else {
			request.setAttribute("form_Action", "AddCourse");

		}
		if (uploadedfilename != null) {
			request.setAttribute("course_image", uploadedfilename);
		} else if (course != null) {
			request.setAttribute("course_image", course.getCourse_image());

		}

		request.getRequestDispatcher("addcourseform.jsp").include(request, response);

	}
}