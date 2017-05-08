<%-- 
    Document   : Logout
    Created on : May 7, 2017, 8:34:47 PM
    Author     : soneil4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.setAttribute("user","");
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
