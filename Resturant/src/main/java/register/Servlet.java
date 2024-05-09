package register;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import profile.User;

import java.io.IOException;

@WebServlet("/reg12")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//create a new session
		HttpSession session = request.getSession();
		
		//update form1 inputs into the session
		User user = new User();
//		User user = (User) session.getAttribute("user");
		
		user.setfName(request.getParameter("firstName"));
		user.setlName(request.getParameter("lastName"));
		user.setMobile(Long.parseLong(request.getParameter("mobile")));
		
		user.setEmail(request.getParameter("email"));
		user.setAddress(request.getParameter("address"));
		
		
		session.setAttribute("user", user);//float a = 10;
		
//		System.out.println(user.getfName());
				
		//response as form2
		response.sendRedirect("reg2.jsp");
	}
}



