<%-- 
    Document   : loginPage
    Created on : Sep 19, 2023, 9:02:56 PM
    Author     : dilip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "com.tech.blog.entities.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
        <%@include file='normal-nav-bar.jsp'%>

        <!--sign in form-->
        <main class="d-flex align-items-center" style="height:  70vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header secondary-background text-white text-center font-weight-bold">
                               <span class="fa fa-sign-in"></span> 
                                <br>
                                <p>Sign In</p>
                            </div>
                            <%
                                
                                Message m = (Message) session.getAttribute("msg");
                                if ( m != null ){
                                %>
                                <div class="alert <%= m.getCssClass()%>" role="alert">
                                    <%= m.getContent() %>
                                </div>
                                
                                <%
                                    session.removeAttribute("msg");
                                }

                            %>
                            <div class="card-body">
                                <form action="loginServlet" method="POST">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required  type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password" required  type="password" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-primary secondary-background">Submit</button>
                                    </div>
                                </form> 
                            </div>
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
    </body>
</html>
