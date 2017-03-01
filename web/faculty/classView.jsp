<%-- 
    Document   : viewClasses
    Created on : Feb 2, 2017, 10:10:24 AM
    Author     : rchild
--%>

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
    <%@include file = "faculty.jsp" %>
    <%
      int CRN = Integer.parseInt(request.getParameter("CRN"));
      String sql = "select Schoolid, Grade from course_account where CRN = '" + CRN + "' and instructor = '" + teacher + "'";
      //DB CONNECT SHIT AND RESULT PARSING
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
          
          //another pull for name and email
          sql = "select name, email from account where id = '" + id + "'";
%>
      <tr>
        <td><%=id%></td>
        <td><%=name%></td>
        <td><%=grade%></td>
        <td><%=email%></td>
      </tr>

      <%        }

      %>


  </body>
</html> 