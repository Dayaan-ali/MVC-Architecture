<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Practice Sheets</title>
</head>
<body>
<jsp:include page="Bootstrap.jsp"></jsp:include>
	<%
	
	
	String s=request.getParameter("sheet");
	
	
	
		response.reset();
		response.setContentType("application/pdf");
		File file = new File("C:/Users/hp/Desktop/PRACTICE/practice sheets/"+s);
		response.setHeader("Content-Type", "application/pdf");
		response.setHeader("Content-Disposition", "inline;filename="+s);
		response.setContentLength((int) file.length());
		response.setHeader("Content-Type", getServletContext().getMimeType(file.getName()));
		response.setHeader("Content-Length", String.valueOf(file.length()));
		//OPen an input stream to the file and post the file contents thru the
		//servlet output stream to the browser
		FileInputStream in = new FileInputStream(file);
		ServletOutputStream outs = response.getOutputStream();
		response.setContentLength(in.available());
		byte[] buf = new byte[8192];
		int c = 0;
		try {
			while ((c = in.read(buf, 0, buf.length)) > 0) {
				System.out.println("size:"+c);
				outs.write(buf, 0, c);
				out.write(outs.toString());
			}

		} catch (IOException ioe) {
			ioe.printStackTrace(System.out);
		} finally {
			outs.flush();
			outs.close();
			in.close();
		}
	%>
</body>
</html>