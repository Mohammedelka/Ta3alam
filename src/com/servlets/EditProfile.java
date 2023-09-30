package com.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.InstructorBean;
import com.dao.InstructorDao;
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
		InstructorBean bean=InstructorDao.getByEmail(email);
		bean.setName(name);
		bean.setMobile(smobile);
		bean.setPassword(password);
		InstructorDao.update(bean);
		response.sendRedirect("index.html");
	}

}
