<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search List with Images</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    


    <style>
        /* Custom styles */
       
        .imga {
            background-image: url("asserts/img/blob-scene-haikei\ \(2\).png");
            background-size: cover;
        }

       
       
        .iconcolor {
            color:#117cee;
            float: left;
            font-size: large;
            padding: 2px;
        }
        
        .iconcolor1 {
            color:green;
            float: left;
            font-size: large;
            padding: 2px;
        }
        .borde{
            border-radius: 10px;
            padding: 30px 40px;
            border: 2px solid gray;
        }
        .forget{
            font-weight:thick;
            font-size: 14px;
        }
     
        
        .or{
        text-align: center;
        font-weight: 900;
        }
        
        body {
            overflow-x: hidden;
        }
    </style>
</head>
<body>
	 <%@ include file="header.jsp" %>

    
    <div class="container my-2 py-4">
        <div class="row justify-content-center">
            <div class="col-md-4 bg-white borde">
                <h2 class="text-center">Login</h2>
                <form action="login" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" name="uname" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group text-center">
                        <em><a href="#">Forgot Password?</a></em>
                    </div>
                    <p><%= session.getAttribute("error") != null ? session.getAttribute("error") : "" %></p>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                    </div>
                    <div class="form-group or">
                        <p class="fa-bounce">(OR)</p>
                    </div>
                    <div class="form-group">
                           <button type="submit" class="btn border border-dark col-md-12" value="Login"><i class="fa-brands iconcolor fa-facebook fa-beat"> </i>Login with Facebook</button> 
                         </div>
                     <div class="form-group">
                                <button type="submit" class="btn border border-dark col-md-12" value="Login"><i class="fa-brands  iconcolor1 fa-google fa-beat"></i> Login with Google</button>
                          </div>
                </form>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
