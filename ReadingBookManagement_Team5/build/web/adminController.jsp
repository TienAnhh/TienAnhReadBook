<%-- 
    Document   : adminController
    Created on : Apr 12, 2022, 7:31:20 PM
    Author     : Tien Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">
        <link rel="stylesheet" href="style.css">
        <!-- Bootstrap core CSS -->
        <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
    <div>
        <c:if test="${notAdmin!=null}">
            <div class="alert alert-danger" id="danger" role="alert">
                You are not an admin, please try with normal login instead of
            </div>
        </c:if>
    </div>
</head>    
<body class="text-center">
    <form action="ProductController" method="GET"
          class="form-signin">
        <div class="topnav">
            <a class="btn btn-dark" href="home.jsp">HOME</a>
            <div class="topnav-right">
                <a href="login.jsp">LOGIN</a>            
            </div>
        </div>
        <label for="inputEmail" >Username Admin:</label>
        <br>
        <input type="text" name="userName" id="inputUsername"  placeholder="Username" required autofocus>
        <br>
        <label for="inputPassword">Password:</label>
        <br>
        <input type="password" name="password" id="inputPassword" placeholder="Password" required>
        <br>
        <button class="btn btn-success" type="submit">Sign in</button>       
    </form>
</body>
</html>
