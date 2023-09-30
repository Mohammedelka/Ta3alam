package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beans.*;

public class CourseDao {

	private static final CourseBean NULL = null;

	public static int save(CourseBean bean) {
		int status = 0;
		try {
			Connection con = DB.getCon();

			PreparedStatement ps = con.prepareStatement(
					"insert into course (course_name,course_image,course_description,instructor,course_video_title,course_video_link) values(?,?,?,?,?,?)");
			ps.setString(1, bean.getCourse_name());
			ps.setString(2, bean.getCourse_image());
			ps.setString(3, bean.getCourse_description());
			ps.setString(4, bean.getInstructor());
			ps.setString(5, bean.getCourse_video_title());
			ps.setString(6, bean.getCourse_video_link());

			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<CourseBean> view() {
		List<CourseBean> list = new ArrayList<CourseBean>();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Course");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				CourseBean bean = new CourseBean();
				bean.setCourse_number(rs.getInt("course_number"));
				bean.setCourse_name(rs.getString("course_name"));
				bean.setInstructor(rs.getString("instructor"));
				bean.setCourse_image(rs.getString("course_image"));
				bean.setCourse_description(rs.getString("course_description"));
				bean.setCourse_video_link(rs.getString("course_video_link"));
				bean.setCourse_video_title(rs.getString("course_video_title"));
				list.add(bean);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}

	public static List<CourseBean> search(String key){
		List<CourseBean> list=new ArrayList<CourseBean>();
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM Course WHERE course_name LIKE '%"+key+"%';");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				CourseBean bean=new CourseBean();
				bean.setCourse_number(rs.getInt("course_number"));
				bean.setCourse_name(rs.getString("course_name"));
				bean.setInstructor(rs.getString("instructor"));
				bean.setCourse_image(rs.getString("course_image"));
				bean.setCourse_description(rs.getString("course_description"));
				bean.setCourse_video_link(rs.getString("course_video_link"));
				bean.setCourse_video_title(rs.getString("course_video_title"));
				list.add(bean);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}

	public static List<CourseBean> searchByInstructor(String instructor) {
		List<CourseBean> list = new ArrayList<CourseBean>();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM course INNER JOIN enroll ON course.course_name = enroll.course_name where enroll.learnerEmail= ? ");
			ps.setString(1, instructor);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				CourseBean bean = new CourseBean();
				bean.setCourse_number(rs.getInt("course_number"));
				bean.setCourse_name(rs.getString("course_name"));
				bean.setInstructor(rs.getString("instructor"));
				bean.setCourse_image(rs.getString("course_image"));
				bean.setCourse_description(rs.getString("course_description"));
				bean.setCourse_video_link(rs.getString("course_video_link"));
				bean.setCourse_video_title(rs.getString("course_video_title"));
				list.add(bean);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}

	public static int delete(int course_number) {
		int status = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("delete from Course where course_number=?");
			ps.setInt(1, course_number);
			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static CourseBean getCourse(int course_number) {
		CourseBean course = new CourseBean();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Course where course_number=?");
			ps.setInt(1, course_number);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				course.setCourse_number(rs.getInt("course_number"));
				course.setCourse_name(rs.getString("course_name"));
				course.setInstructor(rs.getString("instructor"));
				course.setCourse_image(rs.getString("course_image"));
				course.setCourse_description(rs.getString("course_description"));
				course.setCourse_video_link(rs.getString("course_video_link"));
				course.setCourse_video_title(rs.getString("course_video_title"));

			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return course;
	}

	public static int edit(CourseBean bean) {
		int status = 0;
		try {
			Connection con = DB.getCon();

			PreparedStatement ps = con.prepareStatement(
					"update course set course_name =? ,course_image=?,course_description=?,instructor=?,course_video_title=?,course_video_link=? where course_number = ? ");
			ps.setString(1, bean.getCourse_name());
			ps.setString(2, bean.getCourse_image());
			ps.setString(3, bean.getCourse_description());
			ps.setString(4, bean.getInstructor());
			ps.setString(5, bean.getCourse_video_title());
			ps.setString(6, bean.getCourse_video_link());
			ps.setInt(7, bean.getCourse_number());

			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static int getNumberCourses(String instructor) {
		int result = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select count(*) from course where  instructor =? ");
			ps.setString(1, instructor);
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
