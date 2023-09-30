<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.beans.CourseBean"%>
<%@page import="com.beans.ReviewBean"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
CourseBean course = (CourseBean) request.getAttribute("course");
%>

<!DOCTYPE html>
<html>
<head>

<title>Instructor Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
	integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
<style type="text/css">
.fl {
	display: flex;
	justify-content: space-around;
}

.fa-trash:hover {
	color: red;
}
</style>

</head>
<body>
	<style>
.nowra {
	display: -ms-flexbox;
	display: flex;
	margin-right: -15px;
	margin-left: -15px
}
</style>

	<%@ include file="../sidebar.jsp"%>
	<div id="content">
		<button id="menu-button" class="mb-4 btn btn-outline-info">
			<i class="mr-2 fas fa-bars"></i>Menu
		</button>
		<div id="dashboard" class="content-section">
			<h1 class="display-3 mb-0">Welcome to your Dashboard</h1>
			<hr class="mt-1 mb-5">
			<div class="nowra">

				<div class="col-xl-4">
					<div class="nowra">
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">
										Total Courses :
										<c:out value="${NbrCourses}"></c:out>
									</h2>
								</div>
								<div class="card-body bg-info " style="padding: 0">
									<img class="img-thumbnail bg-info " src="images/course.png"
										style="width: 100%">
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">
										Total Learners :
										<c:out value="${NbrLearners}"></c:out>
									</h2>
								</div>
								<div class="card-body bg-info" style="padding: 0">
									<img class="img-thumbnail bg-info" src="images/learner.png"
										style="width: 100%">
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">
										Total Reviews :
										<c:out value="${NbrLearners}"></c:out>
									</h2>
								</div>
								<div class="card-body bg-info" style="padding: 0">
									<img class="img-thumbnail bg-info" src="images/review.png"
										style="width: 100%">
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="nowra">

				<div class="col-xl-4">
					<div class="nowra">
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">
										Total Enroll :
										<c:out value="${NbrEnrolled}"></c:out>
									</h2>
								</div>
								<div class="card-body bg-info " style="padding: 0">
									<img class="img-thumbnail bg-info " src="images/enrolled.png"
										style="width: 100%">
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">
										 Completed :
										<c:out value="${NbrCompleted}"></c:out>
									</h2>
								</div>
								<div class="card-body bg-info" style="padding: 0">
									<img class="img-thumbnail bg-info" src="images/completed.png"
										style="width: 100%">
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div id="courses" class="content-section">
			<h1 class="display-3 mt-5 mb-0">My Courses</h1>
			<hr class="mt-1 mb-5">
			<div class="row">
				<c:forEach items="${courses}" var="course">
					<div class="col-sm-6 col-md-4 col-xl-5">
						<div class="card mb-4 p-0">
							<div class="card-header p-0">
								<img src='images/${course.getCourse_image()}' alt=""
									class="card-img-top" height="250px">
							</div>
							<div class="card-body">
								<h2 class="fl">${course.getCourse_name()}
									<a
										href="DeleteCourse?course_number=${course.getCourse_number()}">
										<i class="fas fa-trash"></i>
									</a>
								</h2>

								<p class="lead">
									<strong>Number : </strong>${course.getCourse_number()}
								</p>
								<p class="lead">
									<strong>Description : </strong>${course.getCourse_description().substring(0,50)}...
								</p>
								<a
									href="ViewOneCourse?course_number=${course.getCourse_number()}"
									class="mt-3 lead btn btn-outline-success"> View Course Page</a>
							</div>
						</div>
					</div>
				</c:forEach>



			</div>
			<a href="AddCourseForm" class="my-4 p-3 btn btn-lg btn-primary"
				id="add-class-btn"> <i class="fa fa-plus"></i> Add new course
			</a>
		</div>
		<div id="reviews" class="content-section">
			<h1 class="display-3 mt-5 mb-0">Reviews</h1>
			<hr class="mt-1 mb-5">
			<div id="schedule" class="row">
				<div class="col-xl-6">
					<div id="upcoming">
						<div class="table-head bg-warning text-white p-3">
							<h1 class="m-0">Reviews Lists</h1>
						</div>
						<div class="table-content">
							<c:forEach items="${reviews}" var="review">

								<div class="table-row">
									<h3 class="">Review ${review.ID}</h3>
									<hr class="m-0 mb-3">
									<div class="table-row-inner">
										<div>
											<p class="lead">
												<strong>Review Text :</strong>
											</p>
											<p class="lead">
												<strong>Review Rating :</strong>
											</p>
										</div>
										<div>
											<a href="/" class="table-data lead"> ${review.reviewText}</a>
											<p class="m-0 text-right">
												<a href="/" class="lead">${review.rating}/5</a>
											</p>
										</div>
									</div>
									<div class="table-row-inner">

										<p class="m-0">
											<a href="/" class="lead"> <i class="fas fa-comment-dots"></i>
												By: ${review.userName}
											</a>
										</p>

									</div>

								</div>
							</c:forEach>


						</div>
						<div class="table-footer py-3 bg-warning">
							<p class="mb-0 text-center">
								<a href="#" class="text-dark lead"><i
									class="mr-2 fas fa-list-ul"></i>See People how they appreciate</a>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/scripts.js"></script>

</body>
</html>