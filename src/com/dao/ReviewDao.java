package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beans.*;

public class ReviewDao {

	private static final ReviewBean NULL = null;

	public static int save(ReviewBean bean) {
		int status = 0;
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("insert into review values(?,?,?,?,?)");
			ps.setString(1, bean.getReviewText());
			ps.setString(2, bean.getUserName());
			ps.setString(3, bean.getRating());
			ps.setInt(4, bean.getCourse_number());
			ps.setString(5, null);


			status = ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<ReviewBean> view() {
		List<ReviewBean> list = new ArrayList<ReviewBean>();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from review");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ReviewBean bean = new ReviewBean();
				bean.setReviewText(rs.getString("reviewText"));
				bean.setUserName(rs.getString("userName"));
				bean.setRating(rs.getString("rating"));
				bean.setCourse_number(rs.getInt("course_number"));
				bean.setID(rs.getInt("ID"));

				list.add(bean);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}

	public static List<ReviewBean> getReviews_Course(int course_number) {
		List<ReviewBean> list = new ArrayList<ReviewBean>();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from review where course_number=?");
			ps.setInt(1, course_number);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ReviewBean bean = new ReviewBean();
				bean.setReviewText(rs.getString("reviewText"));
				bean.setUserName(rs.getString("userName"));
				bean.setRating(rs.getString("rating"));
				bean.setCourse_number(rs.getInt("course_number"));
				bean.setID(rs.getInt("ID"));

				list.add(bean);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}
	public static List<ReviewBean> getReviews() {
		List<ReviewBean> list = new ArrayList<ReviewBean>();
		try {
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement("select * from review");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ReviewBean bean = new ReviewBean();
				bean.setReviewText(rs.getString("reviewText"));
				bean.setUserName(rs.getString("userName"));
				bean.setRating(rs.getString("rating"));
				bean.setCourse_number(rs.getInt("course_number"));
				bean.setID(rs.getInt("ID"));

				list.add(bean);
			}
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}
}
