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
        String crn =request.getParameter("crn");
        DBConnect db = new DBConnect();
        
        out.println(session.getAttribute("id"));
        String sql = "insert into course_account values (0,'" + session.getAttribute("id") + "','" + crn + "','" + 0 + "','" +0 + "')";
        db.updateDB(sql);
        response.sendRedirect("studentMainPage.jsp");
        %>
    </body>
</html>
