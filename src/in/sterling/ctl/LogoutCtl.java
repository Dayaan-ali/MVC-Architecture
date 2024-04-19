package in.sterling.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

public class LogoutCtl extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession hs = req.getSession();
		hs.getAttribute("uname");
		hs.invalidate();
		
		resp.sendRedirect("/Login.jsp");
		
		/*RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
		rd.forward(req, resp);*/
	}
}
