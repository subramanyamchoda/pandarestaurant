<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order Tracking Template</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    #progressbar-1 {
      color: #455A64;
    }

    #progressbar-1 li {
      list-style-type: none;
      font-size: 13px;
      width: 33.33%;
      float: left;
      position: relative;
    }

    #progressbar-1 #step1:before {
      content: "1";
      color: #fff;
      width: 29px;
      margin-left: 22px;
      padding-left: 11px;
    }

    #progressbar-1 #step2:before {
      content: "2";
      color: #fff;
      width: 29px;
    }

    #progressbar-1 #step3:before {
      content: "3";
      color: #fff;
      width: 29px;
      margin-right: 22px;
      text-align: center;
    }

    #progressbar-1 li:before {
      line-height: 29px;
      display: block;
      font-size: 12px;
      background: #455A64;
      border-radius: 50%;
      margin: auto;
    }

    #progressbar-1 li:after {
      content: '';
      width: 121%;
      height: 2px;
      background: #455A64;
      position: absolute;
      left: 0%;
      right: 0%;
      top: 50%;
      z-index: -1;
      transition: width 15s linear; /* Animation */
    }

    #progressbar-1 li:nth-child(2):after {
      left: 50%
    }

    #progressbar-1 li:nth-child(1):after {
      left: 25%;
      width: 50%;
    }

    #progressbar-1 li:nth-child(3):after {
      left: 75%;
      width: 50%;
    }

    #progressbar-1 li.active:before,
    #progressbar-1 li.active:after {
      background: #1266f1;
    }

    .card-stepper {
      z-index: 0;
      position: relative; /* Needed for bottom text animation */
    }

    .progress-bar-wrapper {
      position: relative;
      height: 2px; /* Adjusted height for the small line */
      background-color: #f0f0f0;
      border-radius: 1px; /* Adjusted border radius */
      overflow: hidden;
    }

    .progress-bar {
      position: absolute;
      top: 0;
      left: 0;
      height: 100%;
      width: 0;
      background-color: #28a745; /* Green color */
      transition: width 15s linear; /* Linear transition over 15 seconds */
    }

    .step-labels {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px; /* Added margin for spacing */
    }

    .step {
      text-align: center;
    }

    .bottom-text {
      position: absolute;
      bottom: 20px;
      left: 0;
      right: 0;
      text-align: center;
      font-size: 18px;
      color: #fff;
      opacity: 0; /* Initially hidden */
      transition: opacity 1s ease; /* Fade in animation */
    }

    .bottom-text.active {
      opacity: 1; /* Make visible */
    }

  </style>
</head>

<body>
	<%@ include file="header.jsp" %>

<section class="vh-100">
    <div class="container py-7 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-12 col-lg-9 col-xl-8">
                <div class="card card-stepper" style="border-radius: 16px;">
                    <div class="card-header p-6 bg-success">
                        <div class="d-flex justify-content-center align-items-center ">
                            <div>
                                <!-- Increased font size -->
                               <br> <br><h3 class="mb-2 text-center text-white fa-beat display-4" style="font-size: 3rem;">Congratulations your order <br>successful Completed</h3>
                                <br><br>
                            </div>

                        </div>
                    </div>
                    <div class="card-body p-4">
                        <div class="d-flex flex-row mb-4 pb-2">
                            <div class="flex-fill">


                               <br> <h4 class="text-muted mb-0 bold text-center" id="currentDateDisplay"><span class="fw-bold text-body"></span> </h4>
                            </div>
                            <div>
                                <img class="align-self-center img-fluid" src="" width="250">
                            </div>
                        </div>
                        <div id="progressbar-1" class="mx-0 mt-0 mb-5 px-0 pt-0 pb-4">
                            <div class="progress-bar-wrapper">
                                <div class="progress-bar step-placed" style="width: 0;"></div>
                                <div class="progress-bar step-shipped" style="width: 0;"></div>
                                <div class="progress-bar step-delivered" style="width: 0;"></div>
                            </div>
                            <div class="step-labels">
                                <div class="step">Chef Preparing</div>
                                <div class="step">Driver En Route</div>
                                <div class="step">Delivered</div>
                            </div>
                     
      
                    <!-- Bottom Text -->
                   <br><br> <p class=" text-center">Want any help? Please contact us: <b>8998988989</b></p>
                   
              
   </div></div>

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
  


  <!-- Bootstrap JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
    $(document).ready(function () {
      // Function to animate the progress along the bar
      function animateProgress() {
        var progressBars = $('.progress-bar');
        for (var i = 0; i < progressBars.length; i++) {
          $(progressBars[i]).css('width', '100%');
        }
      }

      // Simulate tracking order progress after 15 minutes
      setTimeout(function () {
        animateProgress(); // Update all progress bars to 100%
        $('.bottom-text').addClass('active'); // Show bottom text
      }, 1 * 6 * 100); // 15 minutes in milliseconds
    });

    // Get current time
    var currentTime = new Date();

    // Add 20 minutes to the current time
    currentTime.setMinutes(currentTime.getMinutes() + 20);

    // Format the time
    var formattedTime = currentTime.toLocaleTimeString();

    // Update the element content
    document.getElementById("currentDateDisplay").innerHTML = "Your Order Will be in " + formattedTime;
  </script>

</body>

</html>
