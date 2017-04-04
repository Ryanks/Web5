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
      String term = request.getParameter("semester");
      String teacher = session.getAttribute("name").toString();
      String sql = "select name, time, CRN, term, coursenumber from courses where term = '" + term + "' and instructor = '" + teacher + "'";
   
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Web5", "root", "");
      PreparedStatement state = con.prepareStatement(sql);
      ResultSet result = state.executeQuery();
      if (result.next() == false) {
    %>
    <h1><div class="w3-center">Oops! no result set.</div></h1>
    <%
    } else {
      result.beforeFirst();
    %>
    <div style="margin-left:200px;">
      <table class="w3-table">
        <tr>
          <th>Course Number</th>
          <th>Class</th>
          <th>Time</th>
          <th>Term</th>
          <th>CRN</th>
          <th>View</th>
        </tr>
        <%
          int id;
          String name;
          String time;
          String terms;
          int courseNumber;
          int CRN;
          while (result.next()) {
            name = result.getString(1);
            time = result.getString(2);
            CRN = result.getInt(3);
            terms = result.getString(4);
            courseNumber = result.getInt(5);
            //set each term = result part
        %>
        <tr>
          <td><%=courseNumber%></td>
          <td><%=name%></td>
          <td><%=time%></td>
          <td><%=terms%></td>
          <td><%=CRN%></td>
          <td><form name="classview" action="classView.jsp" method="post">
              <button class="w3-button" type="submit" name="CRN" value="<%=CRN%>">View Class</button>
            </form></td>
        </tr>
        <%        }
          }
        %>

      </table>
    </div>

  </body>
</html> 