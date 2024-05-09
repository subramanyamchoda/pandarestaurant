<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
 <style>
   * {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    
}
.borde{
            border-radius: 10px;
            padding: 30px 40px;
            border: 2px solid gray;
        }
 
         
        body {
           
            overflow-x: hidden;
        }

 </style>
</head>
<body>
   			 <%@ include file="header.jsp" %>
  			<div class="container my-5 py-5 ">
    <div class="row justify-content-center">
        <div class="col-md-4 bg-white borde">
            <h2 class="text-center">Registration form</h2><br>
            <form action="reg22">
                <div class="form-group ">
                    <input type="text" class="form-control" name="uname" id="username" placeholder="User Name"
                           required>
                </div>
                <div class="form-group ">
                    <input type="password" class="form-control" name="password" id="Password" placeholder="Password"
                           required>
                </div>
                <div class="form-group ">
                    <input type="password" class="form-control" name="cPass" id="Confirmpassword"
                           placeholder="Confirm Password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary col-md-12" value="Login">Register</button>
                </div>
            </form>
        </div>
    </div>
</div><br>
  
    
    <%@ include file="footer.jsp" %>


<script src="asserts/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
