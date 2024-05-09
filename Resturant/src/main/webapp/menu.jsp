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
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <style>
        /* Add custom styles if needed */
        .food-card {
            margin-bottom: 20px;
        }

        .footer {
            margin-top: auto;
        }

        .img-fluid {
            animation-duration: var(--fa-animation-duration, 40s);
        }

        .fw-bold {
            font-weight: 700;
        }

        .imga{
          background-image: url("asserts/img/navbar.png");
        background-size: cover;
        }
        footer{
          background-image: url("asserts/img/footer.png");
          background-size: cover;
          }
       
        .text-white1 {
            font-weight: 1000;
            font-size: large;
            font: optional;
            font-size-adjust: inherit;
        }
        body{
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
                        <h1 class="display-1 text-white mb-3 animated text-center slideInDown">Menu </h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-xxl my-1 py-2 imga text-center border rounded text-white">
            <div class="row justify-content-center">
                <div class="col-md-2">
                   <button class="form-control mb-1"><a href="#breakfast">BreakFast</a></button>
                </div>
                <div class="col-md-2">
                    <button class="form-control mb-1"><a href="#lunch">lunch</a></button>
                 </div>
                 <div class="col-md-2">
                    <button class="form-control mb-1"><a href="#starters">Statrers</a></button>
                 </div>
                 <div class="col-md-2">
                    <button class="form-control mb-1"><a href="#dinner">Dinner</a></button>
                 </div>
            </div>
        </div>
        <div class="container-xxl my-1 py-1 imga text-center border rounded text-white">
            <div class="col-md-12">
                    <div class="matter">
                        <h2>Food List</h2>
                        <input type="text" id="searchInput" class="form-control mb-3" placeholder="Search...">
                    </div>
                </div>
            </div>
        </div>
   
        
        <div class="mt-2 mx-2"> <!-- Added mx-4 cla ss for left and right margins -->
            <!-- Food List -->
            <div class="row" id="foodList">
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/pizza.jpg" class="card-img-top" alt="Pizza" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Pizza</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Pizza" data-price="100" data-image="pizza.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/burger.jpg" class="card-img-top" alt="Burger" height="225px"> 
                        <div class="card-body text-white">
                            <h5 class="card-title">Burger</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Burger" data-price="8" data-image="burger.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/salad.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Salad</h5>
                            <p class="card-text"> &#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                <!-- 2nd row-->
                <div class="col-md-4 mb-4 ">
                    <div class="card food-card imga" >
                        <img src="asserts/img/mutton.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">Mutton Biryani</h5>
                                <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/chick.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Chicken Biryani</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/leg.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">chicken leg piece </h5>
                            <p class="card-text "> &#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                <!-- lunch -->
                <div class="col-12 text-center">
                    <h2 id="lunch"><em></em></h2>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/pizza.jpg" class="card-img-top" alt="Pizza" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Pizza</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Pizza" data-price="10" data-image="pizza.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/burger.jpg" class="card-img-top" alt="Burger" height="225px"> 
                        <div class="card-body text-white">
                            <h5 class="card-title">Burger</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Burger" data-price="8" data-image="burger.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/salad.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Salad</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                <!-- 2nd row-->
                <div class="col-md-4 mb-4 ">
                    <div class="card food-card imga" >
                        <img src="asserts/img/mutton.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">Mutton Biryani</h5>
                                <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/chick.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Chicken Biryani</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/leg.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">chicken leg piece </h5>
                            <p class="card-text ">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                
                <!-- starters -->
                <div class="col-12 text-center">
                    <h2 id="starters"><em></em></h2>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/pizza.jpg" class="card-img-top" alt="Pizza" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Pizza</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Pizza" data-price="10" data-image="pizza.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/burger.jpg" class="card-img-top" alt="Burger" height="225px"> 
                        <div class="card-body text-white">
                            <h5 class="card-title">Burger</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Burger" data-price="8" data-image="burger.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/salad.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Salad</h5>
                            <p class="card-text"> &#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                <!-- 2nd row-->
                <div class="col-md-4 mb-4 ">
                    <div class="card food-card imga" >
                        <img src="asserts/img/mutton.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">Mutton Biryani</h5>
                                <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/chick.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Chicken Biryani</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/leg.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">chicken leg piece </h5>
                            <p class="card-text "> &#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                <!-- dinner -->
                <div class="col-12 text-center">
                    <h2 id="dinner"><em></em></h2>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/pizza.jpg" class="card-img-top" alt="Pizza" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Pizza</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Pizza" data-price="100" data-image="pizza.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/burger.jpg" class="card-img-top" alt="Burger" height="225px"> 
                        <div class="card-body text-white">
                            <h5 class="card-title">Burger</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Burger" data-price="8" data-image="burger.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/salad.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Salad</h5>
                            <p class="card-text"> &#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                
                <!-- 2nd row-->
                <div class="col-md-4 mb-4 ">
                    <div class="card food-card imga" >
                        <img src="asserts/img/mutton.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">Mutton Biryani</h5>
                                <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/chick.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title">Chicken Biryani</h5>
                            <p class="card-text">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card food-card imga">
                        <img src="asserts/img/leg.jpg" class="card-img-top" alt="Salad" height="225px">
                        <div class="card-body text-white">
                            <h5 class="card-title ">chicken leg piece </h5>
                            <p class="card-text ">&#8377;100</p>
                            <button class="order-btn" data-name="Salad" data-price="6" data-image="salad.jpg">Order</button>
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
  		
		
			    
      <script src="toggle.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $("#searchInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            var $foodList = $("#foodList");
            $foodList.children('.col-md-4').sort(function(a, b) {
                var aText = $(a).find('.card-title').text().toLowerCase();
                var bText = $(b).find('.card-title').text().toLowerCase();
                return aText.indexOf(value) > -1 ? -1 : (bText.indexOf(value) > -1 ? 1 : 0);
            }).appendTo($foodList);
        });

        // Order button click handler
        $(".order-btn").click(function() {
            var name = $(this).data("name");
            var price = $(this).data("price");
            var image = $(this).data("image");
            var order = { name: name, price: price, image: image };
            var orders = JSON.parse(localStorage.getItem("orders")) || [];
            orders.push(order);
            localStorage.setItem("orders", JSON.stringify(orders));
            alert("Order added to cart!");
            
            // Redirect to orderpage.html
            window.location.href = "orderpage.html";
        });
    });
</script>


<script src="asserts/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
