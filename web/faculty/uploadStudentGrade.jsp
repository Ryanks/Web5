<%-- 
    Document   : viewClasses
    Created on : Feb 2, 2017, 10:10:24 AM
    Author     : rchild
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file = "faculty.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel ="stylesheet" href ="styleSheets\hPStyle.css">
  </head>
  <body>
    <%
      float grade = Float.parseFloat(request.getParameter("grade"));
      int CRN = Integer.parseInt(request.getParameter("CRN"));
      int id = Integer.parseInt(request.getParameter("student_id"));
      String sql = "UPDATE course_account SET grade='" + grade + "' WHERE CRN = '" + CRN + "' AND SchoolID = '"+id+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Web5", "root", "");
      PreparedStatement state = con.prepareStatement(sql);
      state.executeUpdate();
    %>
  </body>
</html> 
