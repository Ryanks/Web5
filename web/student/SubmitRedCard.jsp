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
        <%@include file ="../sessionControl.jsp" %>
        <%
        DBConnect db1 = new DBConnect();
        String rc =request.getParameter("RedCard");
        String getSem = "select Term from courses where CRN = '" + rc + "'";
        String setSem = db1.queryDB(getSem);
        int semlen = setSem.length();
        setSem = setSem.substring(0,semlen-2);
        
        //String setRC = "UPDATE course_account SET red_card_initializer = 1 where CRN = " + rc;
        String setRC = "insert into course_account values (0,'" + session.getAttribute("id") + "','" + rc + "','" + 0 + "','" +1 + "','"+setSem+"')";
        db1.updateDB(setRC);
        response.sendRedirect("studentMainPage.jsp");
        %>
    </body>
</html>
