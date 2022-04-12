<%-- 
    Document   : manager
    Created on : Apr 5, 2022, 9:43:41 PM
    Author     : Tien Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="stylepoll.css">
        <link rel="stylesheet" href="style.css"> 
       <jsp:useBean id="info" class="dal.AccountDAO" scope="request"></jsp:useBean>
    </head>
     
    <body>
        <div class="topnav">
            <a class="btn btn-dark" href="home.jsp">HOME</a>
            <a href="listbook.jsp">List Books</a>
            <a href="bookcase.jsp">Your BookCase</a>
            <a href="manager.jsp">Product Management</a> 
            <a href="logout">Logout</a>
            <div class="topnav-right">
                <a style="text-align: right; margin-top: 0px; margin-right: 5px; color: white"><%String hello = (String) session.getAttribute("userName");%> Hello: <%out.print(hello);%></a>           
            </div>
        </div>  
        <div class="container">
            <div class="row">
                <table class="table table-list-search table table-hover">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Author</th>
                            <th>Category</th>
                            <th>Brief</th>
                            <th>Title</th>
                            <th>Publisher</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="">Update Content</a></td>
                            <td><a href="">Delete</a></td>                          
                        </tr>
                    </tbody>                  
                </table>
                <form action="create.jsp" method="GET">               
                    <input type="submit" value="Create Book" class="btn btn-success">
                </form>   
            </div>
        </div>
    </body>
</html>
