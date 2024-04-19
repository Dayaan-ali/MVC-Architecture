package in.sterling.ctl;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import in.sterling.DTO.RegisterDTO;
import in.sterling.Model.RegisterModel;
@MultipartConfig
@WebServlet("/RegisterCtl")
public class RegisterCtl extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String num = request.getParameter("num");
		String email = request.getParameter("email");
		String state = request.getParameter("state");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
        String g = request.getParameter("g");


		RegisterDTO dto = new RegisterDTO();
		dto.setFname(fname);
		dto.setLname(lname);
		dto.setNum(num);
		dto.setEmail(email);
		dto.setState(state);
		dto.setUname(uname);
		dto.setPass(pass);
		dto.setgender(g);
 
		RegisterModel model = new RegisterModel();
		boolean flag = model.validate(dto);

		if (flag) {
			request.setAttribute("succes", "Registered Successfully Login Here");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
			

		} else {
			
			request.setAttribute("error", "Invalid user and password");
			RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
			rd.forward(request, response);
		}
	}
}
