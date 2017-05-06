<%-- 
    Document   : DropClass
    Created on : Feb 13, 2017, 8:33:41 PM
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
         String crn =request.getParameter("crn1");
        DBConnect db3 = new DBConnect();
        
        out.println(session.getAttribute("id"));
        //String sql = "insert into course_account values (0,'" + session.getAttribute("id") + "','" + crn + "','" + 0 + "','" +0 + "')";
        String sql1 = "delete from course_account where SchoolID = '" + session.getAttribute("id") +"' and CRN = '" + crn + "'";
        db3.updateDB(sql1);
        response.sendRedirect("studentMainPage.jsp");
        
        %>
    </body>
</html>
