<%-- 
    Document   : registrationPage
    Created on : Sep 20, 2023, 1:25:34 AM
    Author     : dilip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
        <title>Personal Technical Blog</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Raleway:wght@300&display=swap" rel="stylesheet">
        <style>
            html * {
                font-family: 'Poppins', sans-serif;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <!--navbar-->
        <%@include file="normal-nav-bar.jsp" %><br>
        <main p-5>
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header secondary-background text-white text-center">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                            Register here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input type="text" name="userName" class="form-control" id="user_name" aria-describedby="user_nameHelp" placeholder="Enter User Name">

                                </div>
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="email" name="userEmail" class="form-control" id="email" aria-describedby="emailHelp" placeholder="example@domain.com">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" name="userPassword" class="form-control" id="password">
                                </div>
                                <div class="form-group">
                                    <label for="gender">Gender</label>
                                    <br>
                                    <input id="gender" type="radio"  name="userGender" value="Male">    Male
                                    <input id="gender" type="radio"  name="userGender" value="Female">    Female
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" name="userCheck" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
                                </div>
                                <div class="form-group">
                                    <textarea name="about" class="form-control" cols="30" rows="10" placeholder="Tell us something about you."></textarea>
                                </div>
                                <div class="container  text-center" id="loader"  style="display: none;">
                                    <span class="fa fa-refresh fa-4x fa-spin"></span>
                                    <h4> Please wait...</h4>
                                </div>
                                <button id="submit-btn" type="submit" class="btn btn-primary secondary-background">Register</button>
                            </form>
                        </div>
                    </div>
                </div>      
            </div>
        </main>

        <!-- JavaScript -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="js/myjs.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
                
                $(document).ready(function(){
                    console.log("Loaded");
                   
                    $("#reg-form").on("submit", function(event){
                        
                        // Preventing the redirection to RegisterServlet
                        event.preventDefault();
                        
                        // Hiding the submit button and displaying refresh icon
                        $("#submit-btn").hide();
                        $("#loader").show();
                        
                        let form = new FormData(this);
                        
                        // Sending data to RegisterServlet
                        $.ajax({
                            
                            url: "RegisterServlet",
                            type: "POST",
                            data: form,    
                            success: function (data, textStatus, jqXHR) {
                                
                                        console.log(data);
                                        $("#submit-btn").show();
                                        $("#loader").hide();
                                        
                                        if ( data.trim() ==="Done" ){
                                            
                                            // Displaying sweet alert upon success
                                            swal("Registration successful, redirecting to the Login page.").then((value) => {
                                                        window.location = "loginPage.jsp";
                                            });
                                            
                                        }else {
                                            
                                            swal(data);
                                            
                                        }
                                        
                                        
                                        
                    },     error: function (jqXHR, textStatus, errorThrown) {
                        
                                        $("#submit-btn").show();
                                        $("#loader").hide();
                        
                                       // Displaying error message
                                       swal("Oops! Something went wrong. Try again!");
                                       
                    },      processData: false,
                             contentType: false
                            
                            
                        });
                        
                    });
                    
                });
      

            
        </script>
    </body>
</html>
