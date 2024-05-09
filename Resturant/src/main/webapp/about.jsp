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

        .footer {
            
          
        }
        .img-fluid{
          animation-duration: var(--fa-animation-duration, 40s);
        }
        .fw-bold{
         font-weight: 700;
        }
        .imga{
          background-image: url("asserts/img/navbar.png");
        background-size: cover;
        }
         footer{
          background-image: url("asserts/img/footer.png");
          background-size: cover;
          margin-top: auto;
          }
        
        
          .text-white1{
            font-weight: 1000;
            font-size: large;
            font: optional;
            font-size-adjust: inherit;
            color: aliceblue;
            
          }
           a .text{
          text-decoration: none;
          
          }
         
        body {
           
            overflow-x: hidden;
        }

 </style>
</head>
<body>
   			 <%@ include file="header.jsp" %>
  
  
			  <div class="container-xxl my-1 py-5 imga">
        <div class="row align-items-center py-4 g-5">
          <div class="col-md-6">
            <div class="matter">
            <h1 class="display-1 text-white mb-3 animated text-center slideInDown">About Us</h1>
        </div>
    </div>
</div>
</div>

<div class="py-1 mt-1 mx-3">
    <div class="row g-1 align-items-center">
        <div class="col-lg-6 text-center">
            <h5 class="section-title ff-secondary text-start text-primary fw-normal">About Us</h5>
            <h1 class="mb-4">Welcome to our Panda restaurant</h1>
            
            <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
            <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos erat ipsum et lorem et sit, sed stet lorem sit.</p>
        </div>
        
        <div class="col-lg-6">
            <div class="row g-3">
                <div class="col-6 text-start">
                    <img class="img-fluid rounded w-100 wow zoomIn" src="asserts/img/restapp1.jpg">
                </div>
                <div class="col-6 text-start">
                    <img class="img-fluid rounded w-75 wow zoomIn" src="asserts/img/restapp2.jpg" style="margin-top: 25%;">
                </div>
                <div class="col-6 text-end">
                    <img class="img-fluid rounded w-75 wow zoomIn" src="asserts/img/restapp3.jpg">
                </div>
                <div class="col-6 text-end">
                    <img class="img-fluid rounded w-100 wow zoomIn" src="asserts/img/restapp4.jpg">
                </div>
            </div>
        </div>
    </div>
</div>
    

    
<div class="container-xxl my-1 py-1">
  <div class="row align-items-center py-1 g-1 ">
      <div class="col-md-12">
          <div class="matter">
      <h3 class="text-center">Team Members</h3>
      <h1 class="text-center">Our Master Chefs</h1>
 </div>  
 </div>
 </div>
 </div>

    
<div class="mt-4 ">
    <!-- Food List -->
   
    <div class="row mx-2" id="foodList ">
        <div class="col-md-4 mb-4 ">
            <div class="card food-card imga">
                <img src="asserts/img/chef3.jpeg" class="card-img-top" alt="" >
                <div class="card-body text-white">
                    <h2 class="card-title text-center">Subbu</h2>
                </div>
            </div>
        </div>
        
        <div class="col-md-4 mb-4">
            <div class="card food-card imga">
                <img src="asserts/img/chef1.jpeg" class="card-img-top" alt="" height="">
                <div class="card-body text-white">
                    <h2 class="card-title text-center">Sai</h2>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card food-card imga">
                <img src="asserts/img/chef2.jpeg" class="card-img-top" alt="" >
                <div class="card-body text-white">
                    <h2 class="card-title text-center">Ram</h2>
                </div>
            </div>
        </div>
        </div>
        </div>
	
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
  
 
<script src="asserts/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
