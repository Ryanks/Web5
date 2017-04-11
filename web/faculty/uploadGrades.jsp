<%-- 
    Document   : uploadGrades
    Created on : Feb 2, 2017, 10:11:12 AM
    Author     : rchild
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>

    <%
      String teacher = session.getAttribute("name").toString();
      String sql = "select name, time, CRN, room_location, term, coursenumber from courses where instructor = '" + teacher + "'";
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
      <table class="w3-table">
        <tr>
          <th>Course Number</th>
          <th>Class</th>
          <th>Time</th>
          <th>Term</th>
          <th>Room</th>
          <th>CRN</th>
          <th>View</th>
        </tr>
        <%
          int id;
          String name;
          String time;
          String terms;
          String room;
          int courseNumber;
          int CRN;
          while (result.next()) {
            name = result.getString(1);
            time = result.getString(2);
            CRN = result.getInt(3);
            room = result.getString(4);
            terms = result.getString(5);
            courseNumber = result.getInt(6);
            //set each term = result part
        %>
        <tr>
          <td><%=courseNumber%></td>
          <td><%=name%></td>
          <td><%=time%></td>
          <td><%=terms%></td>
          <td><%=room%></td>
          <td><%=CRN%></td>
          <td><form name="classview" action="classGradeUpload.jsp" method="post">
              <button class="w3-button" type="submit" name="CRN" value="<%=CRN%>">View Class</button>
            </form></td>
        </tr>
        <%        }
          }
        %>

      </table>

  </body>
</html>
