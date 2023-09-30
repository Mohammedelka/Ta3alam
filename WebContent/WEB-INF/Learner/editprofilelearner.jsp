<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.beans.CourseBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.NumberFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>E-Learning Ta3alam</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;
subset=latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=IM+Fell+Great+Primer:400,400i"
	rel="stylesheet">
</head>
<style>
.logo {
	height: 50px !important;
}

.mt {
	padding-top: 100px !important;
}
</style>
<body>
	<%@ include file="header.html"%>
	<div id="content">
		<div
			class="container col-12 col-md-9 d-flex flex-column align-items-center">
			<h3>Edit profile</h3>

			<hr>



			<form action="EditProfileLearner" method="post">
				<input type="hidden" class="form-control"
					 name="email" value='<c:out value="${Learneremail}"></c:out>'>
				<div class="form-group">
					<label for="name">Your Name:</label> <input type="text"
						class="form-control" placeholder="Enter Your new Name" id="name"
						name="name">
				</div>
				<div class="form-group">
					<label for="name">Your phone:</label> <input type="text"
						class="form-control" placeholder="Enter Your phone" id="phone"
						name="mobile">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" placeholder="Enter password" id="pwd"
						name="password">
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form>

		</div>
	</div>


	<!--    faculty protfolio-->



	<section id="bootom-footer">
		<h4>Course Management System - 2023</h4>

	</section>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/isotape.function.js"></script>
	<script src="js/main.js"></script>
	<script>
		$(document).ready(function() {

		})
	</script>
</body>

</html>