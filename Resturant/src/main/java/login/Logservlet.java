package login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import profile.Database;

import java.io.IOException;

@WebServlet("/login")
public class Logservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	HttpSession session = request.getSession();
    	session.setAttribute("uname", request.getParameter("uname"));
    	Database db = new Database("user");
    	
    	try {
			int result = db.validate(request.getParameter("uname"),request.getParameter("password"));
			
			switch(result) {
			case 1->{
				session.setAttribute("error", "username is wrong");
				response.sendRedirect("login.jsp");
			}
			case 2->{
				RequestDispatcher rd = request.getRequestDispatcher("dashboard");
				rd.forward(request, response);
			}
			case 3->{
				session.setAttribute("error", "password is wrong");
				response.sendRedirect("login.jsp");
			}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
