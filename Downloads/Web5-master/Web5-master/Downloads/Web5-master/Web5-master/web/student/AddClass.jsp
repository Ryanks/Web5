<%-- 
    Document   : AddClass
    Created on : Feb 13, 2017, 8:34:27 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            //boopdaboopda
        String crn = request.getParameter("AddClass");
        DBConnect db = new DBConnect();
        String sql = "insert into course_account '0','0','0.0','" + "'";
        %>
    </body>
</html>
