<%-- 
    Document   : Semester
    Created on : May 8, 2017, 9:13:37 PM
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
        
        <%
        String semester = request.getParameter("semester");
        session.setAttribute("theSemester",semester);
        response.sendRedirect("studentMainPage.jsp");
        %>
    </body>
</html>
