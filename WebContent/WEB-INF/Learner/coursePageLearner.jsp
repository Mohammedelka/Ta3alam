<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.beans.CourseBean"%>
<%@page import="com.beans.StudentBean"%>
<%@page import="com.beans.ReviewBean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Arrays"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
CourseBean course = (CourseBean) request.getAttribute("course");
String userName = (String) request.getAttribute("userName");
int ifEnroll = (int) request.getAttribute("ifEnroll");
String status = (String) request.getAttribute("status");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;
subset=latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=IM+Fell+Great+Primer:400,400i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,,600,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
	integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy"
	crossorigin="anonymous">
<link href="css/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="build/main.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<style type="text/css">
li {
	width: 150px
}

a {
	color: white;
}

.naved {
	display: flex;
}

ul {
	list-style-type: none;
}
</style>
</head>

<body>
	<section id="top-menu">
		<nav class="navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->


				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="naved">
						<li><a class="navbar-brand" href="#"> <img
								src="image/logo.png" alt="" height="50px" class="logo"></a></li>

						<li><a href="ViewLearner">Home</a></li>

						<li><a href="ViewLearner#latest004">Courses</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Account <span class="caret"></span></a>
							<ul class="dropdown-menu  animated bounceInLeft">
								<li><a href="EditProfileLearnerForm">edit my profile</a></li>
								<li><a href="MyCourses">My courses</a></li>
							</ul></li>
						<li><a href="LogoutLearner">Logout</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Contact us</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</section>
	<!-- Navigation -->
	<header class="main__nav"> </header>

	<section class="search-area">
		<div class="container">
			<nav
				class="navbar navbar-light bg-light justify-content-end no-padding">
				<form class="search form-inline">
					<input class="form-control" type="search"
						placeholder="Search courses" aria-label="Search"> <span
						class="fa fa-search"></span>
				</form>
			</nav>
		</div>
	</section>
	<section class="main__section">
		<div class="container">
			<div class="rowe">
				<div class="course">
					<img class="" width="540px"
						src="<%="images/" + course.getCourse_image()%>">
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col">
					<nav>
						<div class="nav nav-tabs nav-justified" id="nav-tab"
							role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">Overview</a>
							<c:if test="${ifEnroll != 0}">
								<a class="nav-item nav-link" id="nav-profile-tab"
									data-toggle="tab" href="#nav-profile" role="tab"
									aria-controls="nav-profile" aria-selected="false">Learning
									Section</a>
							</c:if>

							<c:if test="${status== 'completed'}">

								<a class="nav-item nav-link" id="nav-contact-tab"
									data-toggle="tab" href="#nav-contact" role="tab"
									aria-controls="nav-contact" aria-selected="false">Finish
									and Certificate</a>
							</c:if>

						</div>
					</nav>
				</div>
			</div>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show  active" id="nav-home"
					role="tabpanel" aria-labelledby="nav-home-tab">
					<div class="container">
						<div class="info__row row">
							<div class="duration col-sm">
								<div class="d-flex align-items-center">
									<div class="icon">
										<i class="fa fa-2x fa-hourglass-half"></i>
									</div>
									<div class="mtext">
										<p>Duration:</p>
										<p>3 weeks</p>
									</div>
								</div>
							</div>
							<div class="time col-sm">
								<div class="d-flex align-items-center">
									<div class="icon">
										<i class="fa fa-2x fa-clock-o"></i>
									</div>
									<div class="mtext">
										<p>3 hours</p>
										<p>per week</p>
									</div>
								</div>
							</div>
							<div class="date col-sm no-padding-r">
								<div class="d-flex align-items-center">
									<div class="icon">
										<i class="fa fa-2x fa-calendar"></i>
									</div>
									<div class="mtext">
										<p>Due Date:</p>
										<p>20 Feb 18</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row" id="enroll">
							<div class="mx-auto">
								<form action="LearnerEnroll" method="post">
									<input type="hidden" id="course_number" name="course_number"
										value="<%=request.getParameter("course_number")%>">
									<c:if test="${ifEnroll == 0}">
										<button type="submit" class="learn-btn btn btn-danger btn-lg">Start
											Learning</button>
									</c:if>
									<c:if test="${ifEnroll != 0}">
										<button type="submit" class="learn-btn btn btn-success btn-lg"
											disabled="disabled">Enrolled</button>
									</c:if>

								</form>
							</div>
						</div>
					</div>
					<div class="container course-info">
						<div class="row">
							<h1>About this Course</h1>
						</div>
						<div class="row">
							<p><%=course.getCourse_description()%></p>
						</div>
						<div class="row">
							<h1>The instructor is</h1>
						</div>
						<div class="row">
							<p><%=course.getInstructor()%></p>
						</div>
					</div>
					<div class="row">
						<h4>Share Your Views Below</h4>
						<div class="container">
							<div class="">
								<div class="comments" id="comments">
									<!-- comment -->
									<c:forEach items="${reviews}" var="review">

										<div class="comment mb-5 row">
											<div class="comment-avatar col text-center pr-1">
												<a href=""> <img
													class="comment-img mx-auto rounded-circle img-fluid"
													src="http://demos.themes.guide/bodeo/assets/images/users/m103.jpg"
													alt="avatar">
												</a>
											</div>
											<div class="comment-content col-11">
												<h6 class="small comment-meta">
													<a>${review.userName }</a> made a comment <span
														class="pull-right"><i class="fa fa-thumbs-o-up"></i>
														<i class="fa fa-thumbs-o-down"></i></span>
												</h6>
												<div class="comment-body">
													<p>
														${review.reviewText} <br> ${review.rating } / 5
													</p>
													<a href="" class="text-right small pull-right"><i
														class="fa fa-comments"></i> reply comment</a>
												</div>
											</div>
										</div>
									</c:forEach>

									<!-- /comment -->

									<form action="LearnerReview" method="post">

										<div class=""
											style="padding: 20px; border: 1px solid #e9ecef;">
											<textarea class="leave-comment form-control" rows="5"
												id="comment" name="comment">Leave a comment...</textarea>
											<br>
											<p class="fr__label" for="face-rating">Give us A rating?</p>
											<div class="fr__face" role="img" aria-label="Straight face">
												<div class="fr__face-right-eye" data-right></div>
												<div class="fr__face-left-eye" data-left></div>
												<div class="fr__face-mouth-lower" data-mouth-lower></div>
												<div class="fr__face-mouth-upper" data-mouth-upper></div>
											</div>
											<input class="fr__input" id="face-rating" type="range"
												name="rating" value="2.5" min="0" max="5" step="0.1">
										</div>
										<div class="row pt-2">
											<div class="col-12">
												<input type="hidden" id="course_number" name="course_number"
													value="<%=request.getParameter("course_number")%>" />
												</button>
												<c:if test="${ifEnroll == 0}">
													<button type="submit"
														class="btn btn-sm btn-primary pull-right"
														disabled="disabled">
														<i class="fa fa-comments"></i> Enroll to post
													</button>
												</c:if>
												<c:if test="${ifEnroll != 0}">
													<button type="submit"
														class="btn btn-sm btn-primary pull-right">
														<i class="fa fa-comments"></i> Post Review
													</button>
													<br />
												</c:if>

											</div>
										</div>
									</form>


								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="tab-pane fade" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					<section id="video-part">
						<h2>Watch all videos</h2>
						<div class="container">
							<div class="row">
								<div class="col-md-8">
									<div class="video-009p">
										<figure>
											<iframe width="754" height="480"
												src='<c:out value="${videolink }"></c:out>' frameborder="0"
												allowfullscreen></iframe>
										</figure>

									</div>

								</div>

								<div class="col-md-4">
									<div class="video-info08">
										<div class="combo007">
											<div class="thumnil001">
												<a href="#"> <img src="image/7.png" alt="image"></a>

											</div>
											<div class="thum002-details">
												<a href="${videolink}" target="_blank">${videotitle}</a>

											</div>
										</div>




									</div>


								</div>

							</div>


						</div>
						<div class="container">
							<div class="row" id="enroll">
								<div class="mx-auto">
									<form action="LearnerFinish" method="post">
										<input type="hidden" id="course_number" name="course_number"
											value="<%=request.getParameter("course_number")%>">
										<c:if test="${ifEnroll != 0}">
											<button type="submit" class="learn-btn btn btn-danger btn-lg">Finish</button>
										</c:if>


									</form>
								</div>
							</div>
						</div>

					</section>

					<!--    Admission ads-->
				</div>
				<div class="tab-pane fade" id="nav-contact" role="tabpanel"
					aria-labelledby="nav-contact-tab">
					<div class="html-content"
						style="width: 1060px; height: 650px; padding: 20px; text-align: center; border: 10px solid #787878; margin: 20px;">
						<div
							style="width: 1000px; height: 600px; padding: 20px; text-align: center; border: 5px solid #787878">
							<span style="font-size: 50px; font-weight: bold">Certificate
								of Completion</span> <br> <br> <span style="font-size: 25px"><i>This
									is to certify that</i></span> <br> <br> <span
								style="font-size: 30px"><b><%=userName%></b></span><br /> <br />
							<span style="font-size: 25px"><i>has completed the
									course</i></span> <br /> <br /> <span style="font-size: 30px"><%=course.getCourse_name()%>
							</span> <br /> <br /> <span style="font-size: 20px">with score
								of <b>100%</b>
							</span> <br /> <br /> <br /> <br /> <span style="font-size: 25px"><i>dated</i></span><br>
							<%
							Date currentDate = new Date();
							String dateToStr = DateFormat.getInstance().format(currentDate);
							%>

							<span style="font-size: 30px"><%=dateToStr%></span>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="mx-auto">
								<button type="button" class="learn-btn btn btn-danger btn-lg"
									id="downloadPdf">Download Pdf</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="bg-danger text-center">
		<span>&#169; 2023 - COURSE MANAGEMENT SYSTEM</span>
	</footer>



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
		integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
		crossorigin="anonymous"></script>
	<script src="js/master.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
	<script type="text/javascript"
		src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
	<script src="js/pdf.js"></script>

</body>

</html>