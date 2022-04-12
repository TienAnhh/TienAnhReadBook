<%-- 
    Document   : home
    Created on : Apr 5, 2022, 8:14:46 PM
    Author     : Tien Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="styleHome.css" rel="stylesheet" type="text/css"/>
        <link href="styleView.css" rel="stylesheet" type="text/css"/>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="stylepoll.css">
        <link rel="stylesheet" href="style.css"> 
        <!------ Include the above in your HEAD tag ---------->
        <jsp:useBean id="info" class="dal.AccountDAO" scope="request"></jsp:useBean>
        <c:if test="${notAdmin!=null}">
        <div class="alert alert-danger" id="danger" role="alert">
            You can not use Manager function
        </div>
        </c:if>
</head>
<body>
    <div class="topnav">
        <a class="btn btn-dark" href="home.jsp">HOME</a>
        <a href="listbook.jsp">List Books</a>
        <a href="bookcase.jsp">Your BookCase</a>
        <a href="manager.jsp" >Product Management</a>          
        <a href="logout">Logout</a>
        <div class="topnav-right">              
            <a style="text-align: right; margin-top: 0px; margin-right: 5px; color: white"><%String hello = (String) session.getAttribute("userName");%> Welcome: <%out.print(hello);%></a>                      
        </div>
    </div>
    <h1>Welcome to Read Book Application!</h1>
</body>
</html>
