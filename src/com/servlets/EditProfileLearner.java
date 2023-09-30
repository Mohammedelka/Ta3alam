package com.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.StudentBean;
import com.dao.StudentDao;
@WebServlet("/EditProfileLearner")
public class EditProfileLearner extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
		StudentBean bean=StudentDao.getByEmail(email);
		bean.setName(name);
		bean.setMobile(smobile);
		bean.setPassword(password);
		StudentDao.update(bean);
		response.sendRedirect("index.html");
	}

}
