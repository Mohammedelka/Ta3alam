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
@WebServlet("/ViewCourseV2")
public class ViewCourseV2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>View Course</title>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navinstructor.html").include(request, response);
		
		out.println("<div class='container'>");
		
		List<CourseBean> list=CourseDao.view();
		
		out.println("<table class='table table-bordered table-striped'>");
		out.println("<tr><th>Image</th><th>course number</th><th>Name</th><th>Description</th><th>Instructor</th><th>Delete</th><th>Details</th></tr>");
		for(CourseBean bean:list){
			out.println("<tr><td><img src=\"images/"+bean.getCourse_image() +"\" width=\"100px\"  /></td><td>"+bean.getCourse_number()+"</td><td>"+bean.getCourse_name()+"</td><td>"+bean.getCourse_description()+"</td><td>"+bean.getInstructor()+"</td><td><a href='DeleteCourse?course_number="+bean.getCourse_number()+"'>Delete</a></td><td><a href='ViewOneCourse?course_number="+bean.getCourse_number()+"'>View</a></td></tr>");
		}
		out.println("</table>");
		
		out.println("</div>");
		
		
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}
}
