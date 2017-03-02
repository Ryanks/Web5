<%-- 
    Document   : UpdateClass
    Created on : Mar 1, 2017, 5:59:06 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file = "header2.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <div style="margin-top: 0.25%" class="w3-container w3-teal" align="center">
            <h1>Remove a Course</h1>
            </div>
    </head>
    <body>
        <%
       
        String crn = request.getParameter("inputCRN");
       
        Connection conn=null;
        Statement st=null;
        Class.forName("com.mysql.jdbc.Driver");
        conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/web5", "root", "");
        
     String sql = "delete from courses where crn ='"+crn+"'";
    st = conn.createStatement();
    st.executeUpdate(sql);
        %>
        
        <div align="center">
            <font size ="6" color="teal">
            Course Removed!
            <br><br><br>
            <a href="addclass.jsp">Remove another Course</a><br><br><br>
        <a href="removeclass.jsp">Add a Course</a>
        </font>
        </div>
    </body>
</html>
