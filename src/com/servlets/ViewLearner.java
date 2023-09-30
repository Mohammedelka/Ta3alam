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
@WebServlet("/ViewLearner")
public class ViewLearner extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CourseBean> courses=null;
		System.out.println(request.getAttribute("key"));
		if(request.getAttribute("key")==null)
		{
			courses=CourseDao.view();
		}
		else {
			courses=CourseDao.search((String)request.getAttribute("key"));
		}
		request.setAttribute("courses", courses);
        this.getServletContext().getRequestDispatcher("/WEB-INF/Learner/index.jsp").forward(request, response);
		request.getRequestDispatcher("footer.html").include(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("key",req.getParameter("key"));  ;
		doGet(req, resp);
	}
}
