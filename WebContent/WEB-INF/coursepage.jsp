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

<title>Add course Form</title>
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

	<%@ include file="../sidebar.jsp"%>
	<div id="content">
		<button id="menu-button" class="mb-4 btn btn-outline-info">
			<i class="mr-2 fas fa-bars"></i>Menu
		</button>
		<div id="dashboard" class="content-section">
			<h1 class="display-3 mb-0"><%=course.getCourse_name()%></h1>
			<hr class="mt-1 mb-5">
			<div class="row">
				<div class="col-xl-8 dash-card" id="messages">
					<div class="card mb-4">
						<div class="card-header bg-warning">
							<h2 class="mb-0">Description</h2>
						</div>
						<div class="card-body">
							<div class="message lead">
								<%=course.getCourse_description()%>
							</div>
							<hr>
							<div class="message lead">
								<%=course.getCourse_description()%>
							</div>
							<hr>
							<div class="message lead">
								<%=course.getCourse_description()%>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="row">
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">Course Image</h2>
								</div>
								<div class="card-body" style="padding: 0">
									<img class="img-thumbnail"
										src="<%="images/" + course.getCourse_image()%>"
										style="width: 100%">
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xl-12">
							<div class="card mb-4">
								<div class="card-header bg-info text-white">
									<h2 class="mb-0">Infos</h2>
								</div>
								<div class="card-body">
									<p class="lead">
										<strong> Course Number : </strong>
										<%=course.getCourse_number()%>
									</p>
									<p class="lead">
										<strong>Instructor : </strong>
										<%=course.getInstructor()%>
									</p>
									<p class="lead">
										<strong>Course Rating : </strong> 5
									</p>
								</div>
							</div>
						</div>
						<div class="col-xl-12 col-sm-6">
							<div class="card mb-4">
								<div class="card-header bg-danger text-white">
									<h2 class="mb-0">Course Learners</h2>
								</div>
								<div class="card-body">
									<p class="lead">
										<strong>Total Learners : </strong>
										<c:out value="${Nbrlearners}" />
									</p>
									<p class="lead">
										<strong> Enrolled :</strong>
										<c:out value="${enrolled}" />
									</p>
									<p class="lead">
										<strong>Completed : </strong>
										<c:out value="${completed}" />
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="courses" class="content-section">
			<h1 class="display-3 mb-0"><%=course.getCourse_video_title()%></h1>
			<hr class="mt-1 mb-5">
			<div class="row">
				<div class="col-md-8">
					<div class="video-009p">
						<figure>
							<iframe width="754" height="480"
								src="<%=course.getCourse_video_link()%>" frameborder="0"
								allowfullscreen></iframe>
						</figure>

					</div>

				</div>



			</div>
			<form class="col-sm-10" action="EditCourseForm" method="post">
				<input type="hidden" class="form-control"
					placeholder="(*) Course Name" name="course_number"
					aria-label="course_number" aria-describedby="basic-addon1"
					value="<c:if test = "${course !=null}"><%=course.getCourse_number()%></c:if>">
				<button type="submit" class="my-4 p-3 btn btn-lg btn-primary"
					id="add-class-btn">
					<i class="fas fa-edit"></i> Edit This course
				</button>
			</form>



		</div>
		<div id="calender" class="content-section">
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