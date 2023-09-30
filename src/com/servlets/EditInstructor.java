package com.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.InstructorBean;
import com.dao.InstructorDao;
@WebServlet("/EditInstructor")
public class EditInstructor extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
		InstructorBean bean=new InstructorBean(id,name, email, password, smobile);
		InstructorDao.update(bean);
		response.sendRedirect("ViewInstructor");
	}

}
