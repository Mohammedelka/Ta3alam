package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beans.InstructorBean;
import com.beans.StudentBean;

public class StudentDao {

	public static int save(StudentBean bean) {
		int status = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con
					.prepareStatement("insert into Student(name,email,password,mobile) values(?,?,?,?)");
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getEmail());
			ps.setString(3, bean.getPassword());
			ps.setString(4, bean.getMobile());
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static int update(StudentBean bean) {
		int status = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con
					.prepareStatement("update Student set name=?,email=?,password=?,mobile=? where id=?");
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getEmail());
			ps.setString(3, bean.getPassword());
			ps.setString(4, bean.getMobile());
			ps.setInt(5, bean.getId());
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
	public static StudentBean getByEmail(String email){
		StudentBean bean=new StudentBean();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("select * from Student where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setMobile(rs.getString(5));
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return bean;
	}

	public static List<StudentBean> view() {
		List<StudentBean> list = new ArrayList<StudentBean>();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Student");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentBean bean = new StudentBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setMobile(rs.getString("mobile"));
				list.add(bean);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}

	public static StudentBean viewById(int id) {
		StudentBean bean = new StudentBean();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Student where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setPassword(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setMobile(rs.getString(5));
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return bean;
	}

	public static String getUsernameFromEmail(String email) {
		StudentBean bean = new StudentBean();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from student where EMAIL=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				bean.setName(rs.getString(2));
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return bean.getName();
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("delete from Student where id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static boolean authenticate(String email, String password) {
		boolean status = false;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Student where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				status = true;
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
	public static int getNumberLearners() {
		int result = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con
					.prepareStatement("select count(*) from student");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return result;
	}
}
