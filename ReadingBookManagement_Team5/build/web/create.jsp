<%-- 
    Document   : create
    Created on : Apr 5, 2022, 9:57:38 PM
    Author     : Tien Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="page-container">
            <form>
                <h1>Create Book</h1>
                <input type="text" name="name" placeholder="Name"><br>
                <input type="text" name="author" placeholder="Author"><br>
                <input type="text" name="category" placeholder="Category"><br>
                <input type="text" name="brief" placeholder="Brief"><br>
                <input type="text" name="title" placeholder="Title"><br>
                <input type="text" name="publisher" placeholder="Publisher"><br>
                <input type="text" name="content" placeholder="Content"><br>
                <button type="submit" value="Add" name="submit">Submit</button>
            </form>
        </div>
    </body>
</html>
