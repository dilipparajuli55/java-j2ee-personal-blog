<%-- 
    Document   : profile
    Created on : Sep 23, 2023, 4:41:04 PM
    Author     : dilip
--%>
<%@page import = "com.tech.blog.entities.User" %>
<%@page  errorPage = "errorPage.jsp"%>
<%
    
    User user =(User) session.getAttribute("currentUser");
    if (user == null){
        response.sendRedirect("login.jsp");
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            html * {
                font-family: 'Poppins', sans-serif;
            }
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Raleway:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>

        <!--NAVBAR-->

        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-cog"></span> Learn Programming</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#! " ><span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            <span class="fa fa-unsorted"></span> Category
                        </a>
                        <div class="dropdown-menu" >
                            <a class="dropdown-item" href="#">Java</a>
                            <a class="dropdown-item" href="#">Python</a>
                            <a class="dropdown-item" href="#">JavaScript</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><span class="fa fa-vcard-o"></span> Contact</a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-right">
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-user"></span> <%= user.getName() %></a>
                    </li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet"><span class="fa fa-sign-out"></span> Log Out</a>
                    </li>
                </ul>
            </div>
        </nav>

        <!--END OF NAVBAR-->

        <!--PROFILE MODAL-->
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header secondary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Profile Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pics/<%=user.getProfile() %>"  class="img-fluid"  style="border-radius: 50%; max-width: 150px" alt="profile-pic"/>
                            <h5 class="modal-title mt-3"     id="exampleModalLabel"><b>Username:</b> <%=user.getName() %></h5>
                            <!--PROFILE DETAILS-->
                            <div id="profile-details">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th scope="row">Id</th>
                                            <td><%= user.getId() %></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Email</th>
                                            <td><%= user.getEmail() %></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender</th>
                                            <td><%= user.getGender() %></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">About</th>
                                            <td>
                                                <textarea rows="4" class="form-control" name="user-about"><%= user.getAbout() %></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Registered Date</th>
                                            <td><%= user.getDateTime() %></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                    <!--EDIT PROFILE DETAILS-->
                            <div id="profile-edit" style="display: none;">
                                <br>
                                <h3 class="mt-2">Edit Profile Details </h3>
                                <form action="EditServlet" method="POST" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>Id: </td>
                                            <td><%= user.getId() %></td>
                                        </tr>
                                        <tr>
                                            <td>Email </td>
                                            <td><input type="email"  class="form-control" name="user-email" value="<%= user.getEmail() %>"></td>
                                        </tr>
                                        <tr>
                                            <td>Username </td>
                                            <td><input type="text"  class="form-control" name="user-name" value="<%= user.getName() %>"></td>
                                        </tr>
                                        <tr>
                                            <td>About </td>
                                            <td><input type="text"  class="form-control" name="user-about" value="<%= user.getAbout() %>"></td>
                                        </tr>
                                         <tr>
                                            <td>Gender</td>
                                            <td><%= user.getGender().toUpperCase() %></td>
                                        </tr>
                                        <tr>
                                            <td>Account Created </td>
                                            <td><%= user.getDateTime()%></td>
                                        </tr>
                                        <tr>
                                            <td>Profile Picture</td>
                                        <input class="form-control" type="file" name="image">
                                        </tr>
                                    </table>
                                        <div class="container">
                                            <button type="submit" class="btn btn-outline-primary">Save</button>
                                        </div>
                                </form>
                           </div>               
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit Profile</button>
                    </div>
                </div>
            </div>
        </div>
        <!--END OF PROFILE MODAL-->

        <!--JAVA SCRIPT-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="js/myjs.js"></script>
        <script>
            $(document).ready(function(){
                let editStatus = false;
                $("#edit-profile-button").click(function(){
                        if ( editStatus === false ){
                            $("#profile-details").hide();
                            $("#profile-edit").show();
                            editStatus = true;
                            $(this).text("Back");
                        } else {
                            $("#profile-details").show();
                            $("#profile-edit").hide();
                            editStatus = false;
                        }
                });
            });
        </script>
    </body>
</html>
