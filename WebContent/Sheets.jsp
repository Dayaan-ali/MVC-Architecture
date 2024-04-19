<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="logo.png" type="image/png">
<meta charset="ISO-8859-1">
<title>Practice Sheets</title>
</head>
<jsp:include page="Bootstrap.jsp"></jsp:include>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">

			<%
				File f = null;
				String s[] = null;
				try {
					f = new File("C:\\User\\hp\\Desktop\\PRACTICE\\Pratice sheets");
					s = f.list();

				} catch (Exception e) {
				}
				for (String str : s) {
			%>


			<div class="col-4">
				<form action="upload.jsp">
					<tr>
						<td><input type="submit" name="sheet" value="<%=str%>">
						</td>
					</tr>
				</form>
			</div>
			<%
				}
			%>

		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>