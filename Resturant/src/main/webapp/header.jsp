<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    
<style>
	 .imga{
          background-image: url("asserts/img/navbar.png");
        background-size: cover;
        }
        .text-white1{
            font-weight: 1000;
            font-size: large;
            font: optional;
            font-size-adjust: inherit;
            color: aliceblue;
            
          }
	
</style>
</head>
<body>
<script> src="toogle.js"</script>

 <nav class="navbar navbar-expand-lg navbar-light aaa text-white1  imga">
      <img src="asserts/img/blob-scatter-haikei.png" width="50px">
        <a class="navbar-brand " href="index.jsp">Panda Restaurant</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  " id="navbarNav">
            <ul class="navbar-nav ml-auto  ">
                 <li class="nav-item">
                    <a class="nav-link text-white" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="services.jsp">Services</a>
                </li>
                <li class="nav-item " id="registrationLink">
                    <a class="nav-link text-white" href="reg1.jsp">Registration</a>
                </li>
                <li class="nav-item" id="loginLink">
                    <a class="nav-link text-white" href="login.jsp">Login</a>
                </li>
               
                
                <li class="nav-item" id="menuLink" style="display: none;">
                    <a class="nav-link text-white" href="menu.jsp">Menu</a>
                </li>
                <li class="nav-item" id="tableLink" style="display: none;">
                    <a class="nav-link text-white" href="table1.jsp">Table</a>
                </li>
                <li class="nav-item" id="orderLink" style="display: none;">
                    <a class="nav-link text-white" href="orderpage.html">Order</a>
                </li>
                <li class="nav-item" id="dashboard" style="display: none;">
                    <a class="nav-link text-white" href="dashboard.jsp">profile</a>
                </li>
                
                 <li class="nav-item" id="logoutLink" style="display: none;">
                    <a class="nav-link text-white" href="1.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>



<script src="asserts/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>