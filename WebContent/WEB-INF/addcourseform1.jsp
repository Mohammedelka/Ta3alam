

<style>
.input-group-prepend {
	margin-right: -1px;
	width: 40px;
}
</style>
<body>
	<div
		class="container col-12 col-sm-10 col-md-9 d-flex flex-column align-items-center">
		<h3>Add Course Form</h3>

		<hr>

		<form class="col-sm-10" action="uploadservlet" method="post"
			enctype="multipart/form-data">
			<div>
				<div class="custom-file">
					<input type="file" name="fname" class="custom-file-input"
						id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" required="required">
					<label class="custom-file-label" for="inputGroupFile04">Select
						Image Course </label>
				</div>
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="submit"
						id="inputGroupFileAddon04">Upload Image</button>
				</div>
			</div>

		</form>
		<form class="col-sm-10" action="AddCourse" method="post">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1"><i
						class="fa fa-graduation-cap" aria-hidden="true"></i> </span>
				</div>
				<input type="text" class="form-control"
					placeholder="(*) Course Name" name="course_name"
					aria-label="course_name" aria-describedby="basic-addon1">
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1"><i
						class="fa fa-pencil"></i> </span>
				</div>
				<textarea class="form-control" placeholder="Course Description"
					name="course_description" aria-label="course_description"
					aria-describedby="basic-addon1"></textarea>
			</div>
			

			<div class="input-group mb-3">
				<label for="validationServer01" class="form-label"></label> <input
					class="form-control <c:if test = "${course_image !=null}"><c:out value = "is-valid"/> </c:if> 
					id="validationServer01" required type="text"
					value="<c:out value="${course_image}"/>"
					aria-label="readonly input example" name="course_image" readonly>
				<div class="valid-feedback">Image uploaded</div>
			</div>


			<button type="submit" value="upload"
				class="btn btn-warning btn-block col-sm-4 col-md-3 col-xl-2">
				<span>Add</span> <i class="fa fa-paper-plane"></i>
			</button>
		</form>

	</div>
</body>