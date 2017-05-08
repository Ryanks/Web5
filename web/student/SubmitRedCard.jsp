<%-- 
    Document   : SubmitRedCard
    Created on : Feb 8, 2017, 9:30:35 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        DBConnect db1 = new DBConnect();
        String rc =request.getParameter("RedCard");
        //String setRC = "UPDATE course_account SET red_card_initializer = 1 where CRN = " + rc;
        String setRC = "insert into course_account values (0,'" + session.getAttribute("id") + "','" + rc + "','" + 1 + "','" +0 + "')";
        db1.updateDB(setRC);
        response.sendRedirect("studentMainPage.jsp");
        %>
    </body>
</html>
