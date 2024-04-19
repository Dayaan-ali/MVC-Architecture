<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="logo.png" type="image/png">
<meta charset="ISO-8859-1">
<title>Login Here</title>
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
	<jsp:include page="nav.jsp"></jsp:include>

	<div class="main">
		<img src="gb.jpg" class="ii">
		<form class="container-fluid" action="LoginCtl" method="post">
			<div class="d-flex justify-content-around">

				<div class="col-md-4 ml-5">
					<font color="green"><h4>
							<%
								String a = (String) request.getAttribute("succes");
								if (a != null) {
									out.println(a);
								}
							%>


						</h4> </font> <br> <br>

					<div class="mb-3">
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