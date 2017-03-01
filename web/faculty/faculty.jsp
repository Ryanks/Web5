<%-- 
    Document   : HomePage
    Created on : Jan 25, 2017, 8:32:22 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel ="stylesheet" href ="styleSheets\hPStyle.css">
  </head>
  <body>
    <%@include file = "../header.jsp" %>
    <div style="margin-left:200px; margin-top: 1cm;">
      <div class="w3-dropdown-hover">
        <button class="w3-button w3-teal">View Classes</button>
        <div class="w3-dropdown-content w3-border">
          <td><form name="viewclass" action="viewClasses.jsp" method="post">
              <button type="submit" name="classid" value="<%="Spring2017"%>">Spring 2017</button>
          </td></form>
          <td><form name="viewclass" action="viewClasses.jsp" method="post">
              <button type="submit" name="classid" value="<%="Fall2016"%>">Fall 2016</button>
          </td></form>
          <td><form name="viewclass" action="viewClasses.jsp" method="post">
              <button type="submit" name="classid" value="<%="Winter2016"%>">Winter 2016</button>
          </td></form>
        </div>
      </div> 
      <a href ="uploadGrades.jsp"><button class="w3-button w3-teal">Upload Grades</button></a>
      <a href ="viewRedCards.jsp"><button class="w3-button w3-teal">View Red Cards</button></a>
    </div>
  </body>
</html>
