<%-- 
    Document   : sessionControl
    Created on : May 9, 2017, 10:37:31 AM
    Author     : rchild
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%
      if(session.getAttribute("user")==null ||session.getAttribute("name")==null||session.getAttribute("status")==null){
        response.sendRedirect("../index.jsp");
      }
      %>
  </body>
</html>
