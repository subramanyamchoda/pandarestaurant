package order;

import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("firstName");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("address");
        String pincode = request.getParameter("pincode");
        String doorNo = request.getParameter("doorNo");
        String district = request.getParameter("district");
        String email = request.getParameter("email");
        String street = request.getParameter("street");

        // Create UserOrder object and set values
        UserOrder userOrder = new UserOrder();
        userOrder.setName(name);
        userOrder.setMobile(mobile);
        userOrder.setAddress(address);
        userOrder.setPincode(pincode);
        userOrder.setDoorNo(doorNo);
        userOrder.setDistrict(district);
        userOrder.setEmail(email);
        userOrder.setStreet(street);

        // Store order in database
        DatabaseOrder databaseOrder = new DatabaseOrder();
        try {
            databaseOrder.insertOrder(userOrder);
            response.sendRedirect("onroad.jsp"); // Redirect to success page
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.html"); // Redirect to error page
        }
    }
}
