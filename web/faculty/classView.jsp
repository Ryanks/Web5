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
      int CRN = Integer.parseInt(request.getParameter("CRN"));
      String sql = "select Schoolid, Grade from course_account where CRN = '" + CRN + "'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Web5", "root", "");
      PreparedStatement state = con.prepareStatement(sql);
      ResultSet result = state.executeQuery();
      if (result.next() == false) {
    %>
    <h1><div class="w3-center">Oops! no result set. 1 </div></h1>
    <%
    } else {
      result.beforeFirst();
    %>
    <table class="w3-table">
      <tr>
        <th>School ID</th>
        <th>Name</th>
        <th>Grade</th>
        <th>Email</th>
      </tr>
      <%
        
        int id;
        String name;
        float grade;
        String email;
        while (result.next()) {
          //set each term = result part
          id = result.getInt(1);
          grade = result.getInt(2);
          //another pull for name and email
          sql = "select name, email from account where id = '" + id + "'";
          state = con.prepareStatement(sql);
          ResultSet schoolResult = state.executeQuery();
          if (schoolResult.next() == false) {
      %>
      <h1><div class="w3-center">Oops! no result set. <%=id%></div></h1>
      <%
      } else {
        schoolResult.beforeFirst();
        schoolResult.next();
        name = schoolResult.getString(1);
        email = schoolResult.getString(2);
      %>
      <tr>
        <td><%=id%></td>
        <td><%=name%></td>
        <td><%=grade%></td>
        <td><%=email%></td>
      </tr>

      <%        }
          }
        }
      %>


  </body>
</html> 