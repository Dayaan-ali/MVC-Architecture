<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<jsp:include page="Bootstrap.jsp"></jsp:include>
<body>


	<nav class="navbar navbar-expand-lg bg-danger">
		<div class="container-fluid">
			<a class="navbar-brand" href="Index.jsp"><img alt=""
				src="logo.png" width="150px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto my-2 my-lg-0"
					style="-bs-scroll-height: 100px;">

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Footer.jsp"><h5>About Us</h5></a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Footer.jsp"><h5>ContactUs</h5></a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Footer.jsp"><h5>Images</h5></a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Courses.jsp"><h5>Courses</h5></a></li>
					<li class="nav-item"><a class="nav-link active"
						href="Sheets.jsp"><h5>PracticeSheets</h5></a></li>

				</ul>

				<%
				Object o = session.getAttribute("uname");
				if(o ==null){
				%>

				<form class="d-flex" role="search">

					&nbsp; <a href="Register.jsp" type="button"
						class="btn btn-outline-light ">REGISTER</a> &nbsp; <a
						href="Login.jsp" type="button" class="btn btn-outline-light ">LOGIN</a>
				</form>
				<%
				} else {
				%>





				<form class="d-flex" role="search">

					&nbsp; <a type="button" class="btn btn-outline-light "><%= session.getAttribute("uname").toString().toUpperCase() %>
						</a> &nbsp; <a href="Logout.jsp" type="button" class="btn btn-outline-light " >LOGOUT</a>
				</form>
				<%
				} 
				%>



			</div>
		</div>
	</nav>





	<jsp:include page="Header.jsp"></jsp:include>
	<center>
		<h1>
			<font color="green">Welcome <%= request.getAttribute("success") %></font>
		</h1>
	</center>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>