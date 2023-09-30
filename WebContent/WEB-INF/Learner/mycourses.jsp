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
.mt{
    padding-top: 100px !important;
}
</style>
<body>
	<%@ include file="header.html"%>
	<section id="latest004" class="mt">
		<div class="container">
			<h2>My Courses</h2>
			<div class="row">
				<c:forEach items="${courses}" var="course">

					<div class="col-md-3">
						<div class="coursr-01">
							<h4></h4>
							<div class="course_02img">
								<img src=images/${course.getCourse_image()} alt="">
								<h4>${course.getCourse_name()}</h4>
								<p>${course.getCourse_description().substring(0,100)}</p>
							</div>
							<div class="C03-button">
								<a href="ViewCourseLearner?course_number=${course.getCourse_number()}">
									<button type="button" class="see-more007">See more</button>
								</a>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>


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