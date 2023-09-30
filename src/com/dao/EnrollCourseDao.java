package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beans.*;

public class EnrollCourseDao {

	private static final EnrollCourseBean NULL = null;

	public static int save(EnrollCourseBean bean) {
		int status = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement(
					"insert into Enroll(learnerEmail,learnerName,course_number,course_name,enrollDate,LearningStatus) values(?,?,?,?,?,?)");
			ps.setString(1, bean.getLearnerEmail());
			ps.setString(2, bean.getLearnerName());
			ps.setString(3, bean.getCourse_number());
			ps.setString(4, bean.getCourse_name());
			ps.setString(5, bean.getEnrollDate());
			ps.setString(6, bean.getLearningStatus());

			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static int ifEnroll(String course_number, String learnerEmail) {
		int result = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con
					.prepareStatement("select * from Enroll where learnerEmail = ? and course_number= ? ");
			ps.setString(1, learnerEmail);
			ps.setString(2, course_number);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				result++;
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return result;
	}

	public static void changeStatus(String course_number, String learnerEmail) {
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement(
					"UPDATE Enroll SET LearningStatus=? WHERE learnerEmail = ? AND course_number= ? ");
			ps.setString(1, "completed");
			ps.setString(2, learnerEmail);
			ps.setString(3, course_number);
			int rs = ps.executeUpdate();

			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

	}

	public static String getStatus(String course_number, String learnerEmail) {
		String result = null;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con
					.prepareStatement("select * from Enroll where learnerEmail = ? and course_number= ? ");
			ps.setString(1, learnerEmail);
			ps.setString(2, course_number);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				result = rs.getString(7);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return result;
	}

	public static int getNumberLearners(int course_number, String LearningStatus) {
		int result = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con
					.prepareStatement("select count(*) from Enroll where course_number= ? and LearningStatus=? ");
			ps.setInt(1, course_number);
			ps.setString(2, LearningStatus);
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

	public static int getNumberLearner(String LearningStatus) {
		int result = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select count(*) from Enroll where   LearningStatus=? ");
			ps.setString(1, LearningStatus);
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
