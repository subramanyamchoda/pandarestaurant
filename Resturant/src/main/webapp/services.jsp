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

        .imga{
          background-image: url("asserts/img/navbar.png");
        background-size: cover;
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
            <h1 class="display-1 text-white mb-3 animated text-center slideInDown">Services</h1>
        </div>
    </div>
</div>
</div>
  
<div class="container-xxl py-5">

    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
        <h5 class="section-title ff-secondary text-center text-warning fw-normal">Our Services</h5>
        <h1 class="mb-5">Explore Our Services</h1>
    </div>
    <div class="row g-4">
        <div class="col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item rounded pt-3">
                <div class="p-4">
                    <i class="fa fa-3x fa-user-tie text-warning mb-4"></i>
                    <h5>Table Booking</h5>
                    <p>Book the table </p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="service-item rounded pt-3">
                <div class="p-4">
                    <i class="fa fa-3x fa-utensils text-warning mb-4"></i>
                    <h5>Quality food</h5>
                    <p>Quality </p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="service-item rounded pt-3">
                <div class="p-4">
                    <i class="fa fa-3x fa-cart-plus text-warning mb-4"></i>
                    <h5>Online Order</h5>
                    <p>Free online service</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
            <div class="service-item rounded pt-3">
                <div class="p-4">
                    <i class="fa fa-3x fa-headset text-warning mb-4 text"></i>
                    <h5>24/7 Service</h5>
                    <p>Any Time & Any Where We are ready to serve food</p>
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
