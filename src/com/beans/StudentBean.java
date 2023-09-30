package com.beans;

public class StudentBean {
private int id;
private String name,email,password;
private String mobile;

public StudentBean() {}

public StudentBean(int id, String name, String email, String password, String mobile) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.password = password;
	this.mobile = mobile;
}
public StudentBean(String name, String email, String password, String mobile) {
	super();
	this.name = name;
	this.email = email;
	this.password = password;
	this.mobile = mobile;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String string) {
	this.mobile = string;
}

}
