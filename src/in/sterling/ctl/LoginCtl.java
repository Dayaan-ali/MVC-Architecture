package in.sterling.ctl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import in.sterling.DTO.LoginDTO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.sterling.DTO.LoginDTO;
import in.sterling.Model.LoginModel;
import in.sterling.connection.Connectivity;

@WebServlet("/LoginCtl")
public class LoginCtl extends HttpServlet {
	

protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	String uname = request.getParameter("uname");
	String pass = request.getParameter("pass");
		
	LoginDTO dto = new LoginDTO(uname, pass);
			Connection c = Connectivity.getConnectivity();
			LoginModel model = new LoginModel(c);
			
					boolean flag = model.validate(dto);
					System.out.println(flag); 
					if (flag) {
			System.out.println("login successfully");
			HttpSession hs = request.getSession();
			hs.setAttribute("uname", uname );
			request.setAttribute("success", uname);
			RequestDispatcher rd = request.getRequestDispatcher("/Welcome.jsp");
			rd.forward(request, response);
	        } else {
			request.setAttribute("error", "Invalid Username or  Password ");
			RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
		}

	}
}