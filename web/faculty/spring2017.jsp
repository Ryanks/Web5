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
    <%@include file = "faculty.jsp" %>
  </head>
  <body>
    <div class="w3-center">
      <div class="w3-dropdown-hover">
        <button class="w3-btn w3-teal">Pick a class to view</button>
        <div class="w3-dropdown-content w3-blue w3-card-4" style="center:0">
          <a href="class.jsp">Spring Class 1</a>
          <a href="class.jsp">Spring Class 2</a>
          <a href="class.jsp">Spring Class 3</a>
        </div>
      </div>
    </div>
  </body>
</html>
