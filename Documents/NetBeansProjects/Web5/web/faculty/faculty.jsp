<%-- 
    Document   : Faculty
    Created on : Feb 2, 2017, 9:49:32 AM
    Author     : rchild
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <%@include file = "index.jsp" %>
  </head>
  <body>
    <h1>Welcome to the faculty page!</h1>
    <nav class="w3-sidenav w3-collapse w3-teal" style="width:200px" id="mySidenav">
      <a href="uploadGrades.jsp">Upload Grades</a>
      <a href="viewRedCards.jsp">View Redcards</a>
      <div class="w3-dropdown-hover">
        <a href="#">View Classes</a>
        <div class="w3-dropdown-content w3-blue w3-card-4">
          <a href="spring2017.jsp">Spring 2017</a>
          <a href="winter2016.jsp">Winter 2016</a>
          <a href="fall2016.jsp">Fall 2016</a>
        </div>
      </div>
    </nav>
  </body>
</html>
