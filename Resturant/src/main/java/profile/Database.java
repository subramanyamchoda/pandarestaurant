package profile;

import java.sql.*;

public class Database {

    String url, uname, pass, db;
    Connection con;
    String query;
    Statement st;
    PreparedStatement pt;
    
    // Constructor to initialize the database connection parameters
    public Database(String db) {
        super();
        this.db = db;
        this.url = "jdbc:mysql://127.0.0.1:3306/" + this.db;
        this.uname = "root";
        this.pass = "subbu";        
    }
    
    // Method to establish a database connection
    public void connection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, uname, pass);
    }
    
    // Method to read user data from the database based on username
    public User read(String uname) throws SQLException, ClassNotFoundException {
    
        // Establish connection
        this.connection();
        
        // Write query
        query = "select * from profile where uname=?";
        
        // Create prepared statement
        pt = con.prepareStatement(query);
        pt.setString(1, uname);
        
        // Execute query
        ResultSet result = pt.executeQuery();
        User user = new User();
        
        // Process the result
        if (result.next()) {
            user.setfName(result.getString(1));
            user.setlName(result.getString(2));
            user.setMobile(result.getLong(3));
            user.setEmail(result.getString(4));
            user.setAddress(result.getString(5));
            user.setUname(result.getString(6));
            user.setPass(result.getString(7));
        }
        
        // Close the connection
        con.close();
        return user;
    }
    
    // Method to insert user data into the database
    public int insert(User user) throws SQLException, ClassNotFoundException {
        // Establish connection
        this.connection();
        
        // Write query
        this.query = "insert into profile values(?, ?, ?, ?, ?, ?, ?)";
        
        // Create prepared statement
        pt = con.prepareStatement(query);
        
        // Set values for prepared statement
        pt.setString(1, user.getfName());
        pt.setString(2, user.getlName());
        pt.setLong(3, user.getMobile());
        pt.setString(4, user.getEmail());
        pt.setString(5, user.getAddress());
        pt.setString(6, user.getUname());
        pt.setString(7, user.getPass());
        
        // Execute prepared statement
        int row = pt.executeUpdate();
        
        // Close connection
        con.close();
        
        return row;
    }
    
    // Method to delete user data from the database based on username
    public int delete(String uName) throws SQLException, ClassNotFoundException {
        // Establish connection
        this.connection();
        
        // Write query
        this.query = "delete from profile where uname=?";
        
        // Create prepared statement
        pt = con.prepareStatement(query);
        pt.setString(1, uName);
        
        // Execute statement
        int row = pt.executeUpdate();
        
        // Close connection
        con.close();
        
        return row;
    }

    // Method to update user data in the database based on username
    public int update(String address, String uName) throws SQLException, ClassNotFoundException {
        // Establish connection
        this.connection();
        
        // Write query
        this.query = "update profile set address=? where uname=?";
        
        // Create prepared statement
        pt = con.prepareStatement(query);
        pt.setString(1, address);
        pt.setString(2, uName);
        
        // Execute statement
        int row = pt.executeUpdate();
        
        // Close connection
        con.close();
        
        return row;
    }   
    
    // Method to validate user credentials
    public int validate(String uname, String password) throws SQLException, ClassNotFoundException {
        // Establish connection
        this.connection();
        
        // Write query
        query = "select pass from profile where uname=?";
        
        // Create prepared statement
        pt = con.prepareStatement(query);
        pt.setString(1, uname);
        
        // Execute statement
        ResultSet result = pt.executeQuery();
        
        // Validate credentials
        if (!result.next()) {
            con.close();
            return 1; // Wrong username
        }
        if (result.getString(1).equals(password)) {
            con.close();
            return 2; // Correct username and password
        } else {
            con.close();
            return 3; // Wrong password
        }
    }
}
