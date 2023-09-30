package com.beans;

public class ReviewBean {
private String reviewText,userName,rating;
int course_number,ID;
public String getReviewText() {
	return reviewText;
}
public void setReviewText(String reviewText) {
	this.reviewText = reviewText;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getRating() {
	return rating;
}
public void setRating(String rating) {
	this.rating = rating;
}
public int getCourse_number() {
	return course_number;
}
public void setCourse_number(int course_number) {
	this.course_number = course_number;
}
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}

}