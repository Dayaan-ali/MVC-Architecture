<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="logo.png" type="image/png">
<meta charset="ISO-8859-1">
<title>Sterling Institute</title,>
</head>

<body style= "overflow-x: hidden; " >
<jsp:include page="Bootstrap.jsp"></jsp:include>

	<jsp:include page="nav.jsp"></jsp:include>
	
	<br>
	<jsp:include page="Header.jsp"></jsp:include>

	<%
		if (request.getAttribute("error") != null) {
	%>
	<h1>
		<font color="red"><%=request.getAttribute("error")%>></font>
	</h1>
	<%
		}
	%>
	
	<br>
	<img src="SteveJobs.png" class="d-block w-100" alt="1"
		style="background-size: cover;">
		
		<div id="carouselExampleInterval" class="carousel slide" 
		data-bs-ride="carousel">

		<div class="carousel-inner">

			<div class="carousel-item active" data-bs-interval="1000">

				<img src="picture1.JPG" class="d-block w-100" alt="1"
					style="background-size: cover;">

			</div>


			<div class="carousel-item" data-bs-interval="1000">

				<img src="picture3.JPG" class="d-block w-100" alt="3"
					style="background-size: cover;">

			</div>

			<div class="carousel-item" data-bs-interval="1000">

				<img src="picture4.JPG" class="d-block w-100" alt="4"
					style="background-size: cover;">

			</div>

			<div class="carousel-item" data-bs-interval="1000">

				<img src="picture5.JPG" class="d-block w-100" alt="5"
					style="background-size: cover;">

			</div>

			<div class="carousel-item" data-bs-interval="1000">

				<img src="picture6.JPG" class="d-block w-100" alt="6"
					style="background-size: cover;">

			</div>

		</div>

		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">

			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>

		</button>

		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">

			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>

		</button>

	</div> 
		
	<br>
	<br>
	
	<jsp:include page="images.jsp"></jsp:include>
	<br>
	<br>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>