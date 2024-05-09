<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Your Page Title</title>
  <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <!-- Your custom CSS styles -->
  <style>
    .gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
}

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
  
  
	  <%@ include file="header.jsp" %>
  
<section class="vh-150" style="background-color: #f4f5f7; padding-top: 100px; padding-bottom: 100px;">
  <div class="container py-9n h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-10 mb-6 mb-lg-0">
        <div class="card mb-5" style="border-radius: .5rem;">
          <div class="row g-0">
            <div class="col-md-5 gradient-custom text-center text-white" style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="asserts/img/1.png" alt="Avatar" class="img-fluid my-5" style="width: 150px;border-radius:20px"; />
              <h5>${user.fName }</h5>
              <p></p>
              <i class="far fa-edit mb-5"></i>
            </div>
            <div class="col-md-7">
              <div class="card-body p-5">
                <h6>Information</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-4">
                    <h6>Full Name</h6>
                    <p class="text-muted">${user.fName}</p>
                  </div>
                  <div class="col-6 mb-4">
                    <h6>Email</h6>
                    <p class="text-muted">${user.email }</p>
                  </div>
                  <div class="col-6 mb-4">
                    <h6>Phone</h6>
                    <p class="text-muted">${user.mobile }</p>
                  </div>
                  <div class="col-6 mb-4">
                    <h6>Address</h6>
                    <p class="text-muted">${user.address }</p>
                  </div>
                  <div class="col-6 mb-4">
                    <h6>Date Of Birth</h6>
                    <p class="text-muted"></p>
                  </div>
                  <div class="col-6 mb-4">
                    <h6>Age</h6>
                    <p class="text-muted"></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


  
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

  <!-- Bootstrap Bundle with Popper -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
  <!-- Font Awesome Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
  <!-- Your custom scripts -->
  <script>
    // Your custom scripts here
  </script>
</body>

</html>

    
    
      
</body>
</html>
