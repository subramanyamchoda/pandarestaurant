package table;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BookingServlet1")
public class BookingServle extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String booking_id = request.getParameter("booking_id");
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        String url = "jdbc:mysql://127.0.0.1:3306/user";
        String user = "root";
        String password = "subbu";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            String query = "UPDATE table_booking SET name=?, date=?, time=? WHERE booking_id=?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, date);
            pst.setString(3, time);
            pst.setString(4, booking_id);
            pst.executeUpdate();
            conn.close();
            response.sendRedirect("table1.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // This should be replaced with proper error handling
            // Redirect to an error page or show a proper error message
            response.getWriter().println("Error occurred while updating booking information.");
        }
    }
}
