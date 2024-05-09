<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
    
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
  
  
      <div class=" my-1 py-2 imga">
        <div class="row align-items-center py-1 g-2">
          <div class="col-md-6 text-center" >
            <div class="matter ">
              <h1 class="display-4 fw-bold text-white">Enjoy Our <br>Special Meals</h1>
              <p class="text-white mb-4 pb-2">Our restaurant is the perfect place to enjoy a special meal. <br>
              We offer a wide variety of dishes, all made with the freshest ingredients. <br>
              Our chefs are experts in their craft.</p>
              <button type="submit" class="btn btn-danger btn-lg fa-bounce" onclick="order()">Order Now </button> 
            <button type="submit" class="btn btn-success btn-lg fa-bounce" onclick="table()">Book The Table</button> 
            </div>
          </div>
          <div class="col-md-6">
            <div class="img">
              <img src="asserts/img/11.png" class="img-fluid fa-spin" width="650px" height="650px" alt="">
            </div>
          </div>
        </div>
      </div>
  <%@ include file="footer.jsp" %>

<script>
    function order() {
       var menu = "menu.jsp";

        
        window.location.href = menu;
    }
    function table() {
        var table = "table1.jsp";

    
         window.location.href = table;
     }
</script>
<script src="asserts/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
