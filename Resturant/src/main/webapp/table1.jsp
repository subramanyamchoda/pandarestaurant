<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Display Bookings</title>
    <style>
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            padding: 20px;
        }
        .grid-item {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
	 <%@ include file="header.jsp" %>
	         <div class="container-xxl my-1 py-5 imga">
            <div class="row align-items-center py-4 g-5">
                <div class="col-md-6">
                    <div class="matter">
                        <h1 class="display-2 text-white mb-3 animated text-center slideInDown">Table Booking </h1>
                    </div>
                </div>
            </div>
        </div>
	 
    		   <div class="row mx-2" id="foodList ">
        <div class="col-md-4 mb-4 ">
          
                      
            <button type="button" class="btn btn-primary book-btn" data-toggle="modal" data-target="#bookingModal" >Book the Table</button>
                </div>
            </div>
      
    <div class="grid-container">
        <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://127.0.0.1:3306/user" user="root" password="subbu" />

        <sql:query dataSource="${dataSource}" var="result">
            SELECT * FROM table_booking
        </sql:query>

        <c:forEach var="row" items="${result.rows}">
            <div class="grid-item">
                <img src="asserts/img/table.jpg" alt="Image">
                <c:choose>
                    <c:when test="${not empty row.name}">
                    	<p><strong>Table No:</strong> <c:out value="${row.booking_id}" /></p>
                        <p><strong>Name:</strong> <c:out value="${row.name}" /></p>
                        <p><strong>Date:</strong> <c:out value="${row.date}" /></p>
                        <p><strong>Time:</strong> <c:out value="${row.time}" /></p>
                    </c:when>
                    <c:otherwise>
                        <p><strong>Table is available</strong></p>
                    </c:otherwise>
                </c:choose>
            </div>
        </c:forEach>
    </div>
    	  <!-- Modal -->
  <!-- Modal -->
<!-- Modal -->
<div class="modal fade" id="bookingModal" tabindex="-1" role="dialog" aria-labelledby="bookingModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="bookingModalLabel">Book a Table</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="BookingServlet1" method="post">
                   <div class="form-group">
    <label for="booking_id">Select Table</label>
    <select class="form-control" id="booking_id" name="booking_id" required>
        <option value="">Select Table Number</option>
        <!-- Populate table numbers dynamically -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://127.0.0.1:3306/user" user="root" password="subbu" />
        <sql:query dataSource="${dataSource}" var="availableTables">
            SELECT booking_id FROM table_booking WHERE name IS NULL;
        </sql:query>
        <c:forEach var="row" items="${availableTables.rows}">
            <option value="${row.booking_id}">${row.booking_id}</option>
        </c:forEach>
    </select>
</div>

                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" value="${user.fName}" required>
                    </div>
                    <div class="form-group">
                        <label for="dob">Date:</label>
                        <input type="date" id="date" name="date" class="form-control" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required>
                    </div>
                    <div class="form-group">
                        <label for="time">Time</label>
                        <input type="time" class="form-control" id="time" name="time" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Book Now</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Query to fetch available tables -->
<sql:query dataSource="${dataSource}" var="availableTables">
    SELECT booking_id FROM table_booking WHERE name IS NULL;
</sql:query>

		<%! String uname=null; %>
  <% if(session !=null)
	  uname=(String)session.getAttribute("uname");
	  %>
	  
	    <%@ include file="footer.jsp" %>
	    <script src="toggle.js"></script>
  
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        console.log("success");
        const uname = "<%= uname%>";

        if (uname != null) {
        	handleLogin();
        }
    });
</script>		    
  

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
</body>
</html>
