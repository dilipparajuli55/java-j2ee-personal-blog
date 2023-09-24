<%-- 
    Document   : errorPage
    Created on : Sep 21, 2023, 7:44:11 PM
    Author     : dilip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Raleway:wght@300&display=swap" rel="stylesheet">
   </head>
   <style>
        html * {
            font-family: 'Poppins', sans-serif;
        }
    </style>
    <body>
        <div class="container text-center">
            <img src="assets/error.png" alt="error icon" class="img-fluid"/>
            <br>
            <h3 class="display-4">Sorry! Something went wrong!</h3>
            <%= exception %>
            <br>
            <a href="index.jsp"><button class="btn secondary-background btn-lg text-white mt-3"> Home Page</button></a>
        </div>
        
        
        
    </body>
</html>
