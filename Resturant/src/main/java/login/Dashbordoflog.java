package login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import profile.Database;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/dashboard")
public class Dashbordoflog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	Database db = new Database("user");
    	HttpSession session = request.getSession(false);	
    	try {
			session.setAttribute("user", db.read(request.getParameter("uname")));;
			response.sendRedirect("dashboard.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   }

}
