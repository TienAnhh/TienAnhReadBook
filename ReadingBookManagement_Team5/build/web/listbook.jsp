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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="stylepoll.css">
        <link rel="stylesheet" href="style.css">      
    </head>
    <body>
        <div class="topnav">
            <a class="btn btn-dark" href="home.jsp">HOME</a>
            <a href="listbook.jsp">List Books</a>
            <a href="bookcase.jsp">Your BookCase</a>
            <a href="manager.jsp">Product Management</a> 
            <a href="list.jsp">Logout</a>
            <div class="topnav-right">
             <a style="text-align: right; margin-top: 25px; margin-right: 5px; color: white"><%String hello = (String) session.getAttribute("userName");%> Hello: <%out.print(hello);%></a>            
            </div>
          </div>
        <div class="container">
    <div class="row">
        <div class="col-lg-15">
            <form>
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <input class="form-control"  placeholder="Search by name" required>
                    <input class="form-control"  placeholder="Search by author" required>
                    <input class="form-control"  placeholder="Search by category" required>
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
                            <td><a href="">Read</a></td>                           
                        </tr>
                    </tbody>
                    
                </table>   
	</div>
</div>
    </body>
</html>
