<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="logo.png" type="image/png">
<meta charset="ISO-8859-1">
<title>Logout</title>
<style>
.main {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 100px;
	margin-bottom: 100px;
}

.ii {
	width: 100%;
	height: 100vh;
	position: absolute;
	top: 50px;
	left: 0;
	z-index: -1;
}
</style>
</head>
<jsp:include page="Bootstrap.jsp"></jsp:include>
<body>

	<nav class="navbar navbar-expand-lg bg-danger">
		<div class="container-fluid">
			<a class="navbar-brand"><img alt="" src="logo.png" width="150px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			</div>
		</div>
	</nav>
	<h1>
		<marquee>Welcome to Sterling Institute Of Programming and
			Technologies</marquee>
	</h1>

	<div class="main">
		<img src="gb.jpg" class="ii">
		<form class="container-fluid" action="LoginCtl" method="post">
			<div class="d-flex justify-content-around">

				<div class="col-md-4 ml-5">


					<div class="	mb-3">
						<label for="6" class="form-label">Username</label> <input
							name="uname" type="text" class="form-control" id="6"
							aria-describedby="emailHelp" placeholder="Enter Your Username"
							required>
						<divclass="form-text">
					</div>

					<div class="mb-3">
						<label for="7" class="form-label">Password</label> <input
							name="pass" type="password" class="form-control" id="7"
							placeholder="Enter Your Password" required>
					</div>

					<br> <br>

					<div class=" col-md-12 d-flex justify-content-center">
						<button type="submit" class="btn btn-outline-dark">LOGIN</button>
						&nbsp;&nbsp; <a href="Register.jsp" style="color: red;";>New
							User? Register Here.</a>




					</div>
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>