package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseOrder {
    private Connection connection;

    public DatabaseOrder() {
        // Initialize the database connection
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/user", "root", "subbu");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertOrder(UserOrder userOrder) throws SQLException {
        String query = "INSERT INTO orders (name, mobile, address, pincode, door_no, district, email, street) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, userOrder.getName());
        preparedStatement.setString(2, userOrder.getMobile());
        preparedStatement.setString(3, userOrder.getAddress());
        preparedStatement.setString(4, userOrder.getPincode());
        preparedStatement.setString(5, userOrder.getDoorNo());
        preparedStatement.setString(6, userOrder.getDistrict());
        preparedStatement.setString(7, userOrder.getEmail());
        preparedStatement.setString(8, userOrder.getStreet());

        preparedStatement.executeUpdate();
    }
}
