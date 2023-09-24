<%-- 
    Document   : index
    Created on : Sep 19, 2023, 7:29:07 PM
    Author     : dilip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Personal Technical Blog</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            font-size: 14px;
        }
    </style>
    <body>
        <!-- navbar -->
        <%@include file="normal-nav-bar.jsp"%>

        <!-- banner -->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron secondary-background text-white">
                <div class="container">
                    <h3 class="display-3">THE TECH BLOG</h3>
                    <p> Welcome, your premier destination for staying ahead in the ever-evolving world of technology. Our mission is to provide you with in-depth, insightful, and accessible content on the latest trends, innovations, and breakthroughs in the tech industry.</p>
                    <p>Our expert team of writers and contributors, all with extensive backgrounds in various tech fields, curate articles that cover a wide spectrum of topics. From AI and machine learning to cybersecurity, blockchain, cloud computing, and beyond, we break down complex concepts into digestible pieces of knowledge that you can easily grasp and apply.</p>
                    <button class="btn btn-outline-light btn-lg mr-3"><span class="fa fa-address-book"></span> Register! Its Free</button>
                    <a href="loginPage.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-cog"></span> Login  </a>
                </div>
            </div>
        </div>
        <br>
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                    <div class="card" 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary secondary-background text-white">Read more</a>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <!-- JavaScript -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="js/myjs.js"></script>
    </body>
</html>
