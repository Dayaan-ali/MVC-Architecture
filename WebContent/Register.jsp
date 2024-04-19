<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="logo.png" type="image/png">
<meta charset="ISO-8859-1">
<title>Register Here</title>
<style> 

.main{
display: flex;
align-items: center;
justify-content: center;
margin-top:100px;
margin-bottom:100px;
}

.ii{
width:100%;
height:100vh;
position:absolute;
top:50px;
left:0;
z-index:-1;
}

</style>
</head>
<body>
<jsp:include page="Bootstrap.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>

	<div class="main">
	<img src="gb.jpg" class="ii">
		<form class="container-fluid" action="RegisterCtl" method="post" enctype="multipart/form-data">
			<div class="d-flex justify-content-around">
				<div class="col-md-4">
					<div class="mb-3">


						<label for="1" class="form-label">First Name</label> <input
							name="fname" type="text" class="form-control" id="1"
							placeholder="Enter Your First Name" required>
						<div class="form-text"></div>
					</div>
					<div class="mb-3">
						<label for="2" class="form-label">Last Name</label> <input
							name="lname" type="text" class="form-control" id="2"
							placeholder="Enter Your Last Name" required>
						<div class="form-text"></div>
					</div>
					<div class="mb-3">
						<label for="3" class="form-label">Contact No</label> <input
							name="num" type="text" class="form-control" id="3"
							aria-describedby="emailHelp" placeholder="Enter Your Contact No "
							required>
						<div class="form-text"></div>
					</div>
					<div class="mb-3">
						<label for="4" class="form-label">Email address</label> <input
							name="email" type="email" class="form-control" id="4"
							aria-describedby="emailHelp" placeholder="Enter Your Email"
							required>
						<div id="emailHelp" class="form-text"></div>
					</div>

				</div>

				<div class="col-md-4">
					<div class="mb-3">
						<label for="5" class="form-label">State</label> <input
							name="state" type="text" class="form-control" id="5"
							aria-describedby="emailHelp" placeholder="Enter Your State"
							required>
						<div class="form-text"></div>
					</div>
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

				</div>
			</div>
			
			
			<div class=" col-md-4 d-flex justify-content-around w-50 ml-5 mt-3 "
				style="margin-left: 400px">
				<div class="form-check">
					<input class="form-check-input" type="radio" name="g" 
						id="9" value="male" checked> <label
						class="form-check-label" for="exampleRadios1"> MALE </label>
				</div>
				<div c 	lass="form-check">
					<input class="form-check-input" type="radio" name="g"
						id="9" value="female"> <label
						class="form-check-label" for="exampleRadios2">FEMALE</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="g"
						id="9" value="other"> <label
						class="form-check-label" for="exampleRadios3">OTHERS</label>
				</div>
			</div>




			<br> <br>
			<div class=" col-md-12 d-flex justify-content-center">
				<button type="submit" class="btn btn-outline-dark">REGISTER</button>
			
			</div>
			
		</form>
	</div>


	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>