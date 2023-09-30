package com.beans;

import java.sql.Date;

public class EnrollCourseBean {
	private String enroll_id, learnerEmail, learnerName,course_number,course_name;
	private String enrollDate;
	private String LearningStatus;
	public EnrollCourseBean(String enroll_id, String learnerEmail, String learnerName, String course_number,
			String course_name, String enrollDate, String learningStatus) {
		super();
		this.enroll_id = enroll_id;
		this.learnerEmail = learnerEmail;
		this.learnerName = learnerName;
		this.course_number = course_number;
		this.course_name = course_name;
		this.enrollDate = enrollDate;
		LearningStatus = learningStatus;
	}
	public String getEnroll_id() {
		return enroll_id;
	}
	public void setEnroll_id(String enroll_id) {
		this.enroll_id = enroll_id;
	}
	public String getLearnerEmail() {
		return learnerEmail;
	}
	public void setLearnerEmail(String learnerEmail) {
		this.learnerEmail = learnerEmail;
	}
	public String getLearnerName() {
		return learnerName;
	}
	public void setLearnerName(String learnerName) {
		this.learnerName = learnerName;
	}
	public String getCourse_number() {
		return course_number;
	}
	public void setCourse_number(String course_number) {
		this.course_number = course_number;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getLearningStatus() {
		return LearningStatus;
	}
	public void setLearningStatus(String learningStatus) {
		LearningStatus = learningStatus;
	}

}
