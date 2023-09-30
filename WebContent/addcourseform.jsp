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

.btn {
	margin: 20px 0;
}
</style>

</head>
<body>

	<%@ include file="sidebar.jsp"%>
	<div id="content">
		<div
			class="container col-12 col-md-9 d-flex flex-column align-items-center">
			<h3>Course Form</h3>

			<hr>

			<form class="col-sm-10"
				action="uploadservlet<c:if test = "${course !=null}">?course_number=<%=course.getCourse_number()%></c:if>"
				method="post" enctype="multipart/form-data">
				<div>
					<div class="custom-file">
						<input type="file" name="fname" class="custom-file-input"
							id="inputGroupFile04" aria-describedby="inputGroupFileAddon04"
							required="required"> <label class="custom-file-label"
							for="inputGroupFile04">Select Image Course </label>
					</div>


					<div class="input-group-append">
						<button class="btn btn-outline-secondary btn-block" type="submit"
							id="inputGroupFileAddon04">Upload Image</button>
					</div>
				</div>

			</form>
			<form class="col-sm-10"
				action="<c:out value="${form_Action}"/>"
				method="post">
				<input type="hidden" class="form-control" name="course_number"
					value="<c:if test = "${course !=null}"><%=course.getCourse_number()%></c:if>">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1"><i
							class="fa fa-graduation-cap" aria-hidden="true"></i> </span>
					</div>
					<input type="text" class="form-control"
						placeholder="(*) Course Name" name="course_name"
						aria-label="course_name" aria-describedby="basic-addon1"
						value="<c:if test = "${course !=null}"><%=course.getCourse_name()%></c:if>">
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1"><i
							class="fas fa-edit"></i> </span>
					</div>
					<textarea class="form-control" placeholder="Course Description"
						name="course_description" aria-label="course_description"
						aria-describedby="basic-addon1"><c:if
							test="${course !=null}"><%=course.getCourse_description()%></c:if></textarea>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1"><i
							class="fas fa-video"></i> </span>
					</div>
					<textarea class="form-control" placeholder="Course Video Title"
						name="course_video_title" aria-label="course_video_title"
						aria-describedby="basic-addon1"><c:if
							test="${course !=null}"><%=course.getCourse_video_title()%></c:if></textarea>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1"><i
							class="fas fa-film"></i> </span>
					</div>
					<textarea class="form-control" placeholder="Course Video Link"
						name="course_video_link" aria-label="course_video_link"
						aria-describedby="basic-addon1"><c:if
							test="${course !=null}"><%=course.getCourse_video_link()%></c:if></textarea>


				</div>

				<div class="input-group mb-3">
					<label for="validationServer01" class="form-label"></label> <input
						class="form-control <c:if test = "${course_image !=null}"><c:out value = "is-valid"/> </c:if> 
								id="
						validationServer01" required type="text"
						value="<c:out value="${course_image}"/>"
						aria-label="readonly input example" name="course_image" readonly>
					<div class="valid-feedback">Image uploaded</div>
				</div>


				<button type="submit" value="upload"
					class="btn btn-warning btn-block col-sm-4 col-md-3 col-xl-2">
					<span>Submit</span> <i class="fa fa-paper-plane"></i>
				</button>
			</form>

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