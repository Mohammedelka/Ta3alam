package com.beans;

public class CourseBean {
private String course_name,course_description,instructor,course_image,course_video_title,course_video_link;

/**
 * @return the course_video_title
 */
public String getCourse_video_title() {
	return course_video_title;
}
/**
 * @param course_video_title the course_video_title to set
 */
public void setCourse_video_title(String course_video_title) {
	this.course_video_title = course_video_title;
}
/**
 * @return the course_video_link
 */
public String getCourse_video_link() {
	return course_video_link;
}
/**
 * @param course_video_link the course_video_link to set
 */
public void setCourse_video_link(String course_video_link) {
	this.course_video_link = course_video_link;
}
private int course_number;
public CourseBean() {
	super();
	// TODO Auto-generated constructor stub
}
public CourseBean(int course_number,String course_name, String instructor, String course_image, String course_description,String course_video_title,String course_video_link) {
	super();
	this.course_number = course_number;
	this.course_name = course_name;
	this.instructor = instructor;
	this.course_image = course_image;
	this.course_description = course_description;
	this.course_video_title = course_video_title;
	this.course_video_link = course_video_link;


}
public String getCourse_name() {
	return course_name;
}
public void setCourse_name(String course_name) {
	this.course_name = course_name;
}
public String getCourse_description() {
	return course_description;
}
public void setCourse_description(String course_description) {
	this.course_description = course_description;
}
public String getInstructor() {
	return instructor;
}
public void setInstructor(String instructor) {
	this.instructor = instructor;
}
public String getCourse_image() {
	return course_image;
}
public void setCourse_image(String course_image) {
	this.course_image = course_image;
}
public int getCourse_number() {
	return course_number;
}
public void setCourse_number(int course_number) {
	this.course_number = course_number;
}


}
