<%-- 
    Document   : login
    Created on : Feb 6, 2017, 6:14:26 PM
    Author     : James
--%>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
        <div class="w3-container w3-teal">
            <h1>Welcome to Web5!</h1>
            <h4>Please login or register below</h2>
        </div>
            </div>
        <br>
        <form action="admin.jsp" method="POST">
            Username: <input type="text" name="username" size="20" />
            <br><br><br>
            Password: <input type="password" name="password"
                             <br><br><br>
            <a input type="button" href="admin.jsp">Login</a>
            <br><br><br>
            <input type="button"  value="Forgot password" />
            <input type="button" value="Register" />

        </form>
        
      
       
    </body>
</html>
