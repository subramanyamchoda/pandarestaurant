<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Form</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%@ include file="header.jsp" %>



  
<div class="mt-4 mx-5"> 
    <div class="row justify-content-center">
        <div class="col-md-4 bg-white border rounded p-4">
            <h2 class="text-center">Add Address</h2>
            <form action="order" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name" value="${user.fName}" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name" value="${user.lName}" required>
                </div>
                <div class="form-group">
                    <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Phone Number" value="${user.mobile }" required>
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="${user.email }" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="dtno" name="dtno" placeholder="Door Number" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="street" name="street" placeholder="Street" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="address" name="address" placeholder="Village or Town Name" value="${user.address }" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="district" name="district" placeholder="District" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="pincode" name="pincode" placeholder="Pincode" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block" onclick="sucess()">Order Now</button>
            </form>
        </div>
    </div>
</div>
<br><br>

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
  

    	
    	   
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@po	pperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
    