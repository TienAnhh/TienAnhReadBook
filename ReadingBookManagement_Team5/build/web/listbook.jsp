<%-- 
    Document   : listbook
    Created on : Apr 5, 2022, 9:15:46 PM
    Author     : Tien Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">       
        <link rel="stylesheet" href="style.css">  
        <script src="javascriptManager.js" type="text/javascript"></script>
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
                <div class="col-lg-15">
                    <form action="#" method="get">
                        <div class="input-group">
                            <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                            <input class="form-control" id="system-search" name="q"  placeholder="Search by name" required>
                      
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <table class="table table-list-search table table-hover">
                    <thead>
                        <tr>                         
                            <th>ID</th>
                            <th>Name</th>
                            <th>Author</th>
                            <th>Category</th>
                            <th>Brief</th>
                            <th>Title</th>
                            <th>Publisher</th>
                        </tr>
                    </thead>
                    <c:forEach items="${info.listBookInfo()}" var="in4">
                        <tbody>
                            <tr>                               
                                <td>${in4.book_id}</td>
                                <td>${in4.book_titlle}</td>
                                <td>${in4.author}</td>
                                <td>${in4.brief}</td>
                                <td>${in4.publisher}</td>
                                <td>${in4.content}</td>
                                <td>${in4.category}</td>                          
                                <td><a href="">Read</a></td>
                                <td><a href="">Add</a></td>
                            </tr>
                        </tbody>
                    </c:forEach>
                </table>   
            </div>
        </div>
    </body>
</html>
