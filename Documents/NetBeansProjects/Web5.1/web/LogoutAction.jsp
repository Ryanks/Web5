<%-- 
    Document   : LogoutAction
    Created on : Feb 28, 2017, 5:11:17 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.setAttribute("user","");
        response.sendRedirect("index.jsp");
        
        
        
        %>
    </body>
</html>
