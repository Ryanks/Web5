<%-- 
    Document   : viewRedCards
    Created on : Feb 2, 2017, 10:11:02 AM
    Author     : rchild
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@page import="java.sql.*"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%

      boolean flag = false;
      String teachers = session.getAttribute("name").toString();
      String sqls = "select name, time, CRN, term, coursenumber from courses where instructor = '" + teachers + "'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con_red = DriverManager.getConnection("jdbc:mysql://localhost:3306/Web5", "root", "");
      PreparedStatement states = con_red.prepareStatement(sqls);
      ResultSet results = states.executeQuery();
      if (results.next() == false) {
    %>
    <h1><div class="w3-center">You have no classes</div></h1>
    <%
      flag = true;
    } else {
    %>
    <div style="margin-left:200px;">
      <table class="w3-table">
        <tr>
          <th>School ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Accept</th>
          <th>Deny</th>
        </tr>
        <%
          int CRN = 0;
          int red_init = 0;
          String classSql;
          int id = 0;
          String name = "";
          String email = "";
          results.beforeFirst();
          while (results.next()) {
            CRN = results.getInt(3);
            String get_sql = "select Schoolid, red_card_initializer from course_account where CRN = '" + CRN + "'";
            states = con_red.prepareStatement(get_sql);
            ResultSet result_red = states.executeQuery();
            if (result_red.next() == false) {
        %>
        <h1><div class="w3-center">You have no students signed up for your classes</div></h1>
        <%
          flag = true;
        } else {
          result_red.beforeFirst();
          while (result_red.next()) {
            red_init = result_red.getInt(2);
            id = result_red.getInt(1);
            if (red_init == 1) {
              classSql = "select name, email from account where id = '" + id + "'";
              states = con_red.prepareStatement(classSql);
              ResultSet result_account = states.executeQuery();
              result_account.next();
              name = result_account.getString(1);
              email = result_account.getString(2);
              flag = true;
        %>
        <tr>
          <td><%=id%></td>
          <td><%=name%></td>
          <td><%=email%></td>
        <form name="redCardSubmit" action="redCardSubmit.jsp" method="post">
          <input type="hidden" name="student_id" value="<%=id%>">
          <td><button class="w3-btn w3-Blue w3-round-xlarge" type="submit" name="CRN" value="<%=CRN%>">Accept</button>
        </form>
        <form name="redCardDeny" action="redCardDeny.jsp" method="post">
          <input type="hidden" name="student_id" value="<%=id%>">
          <td><button class="w3-btn w3-Blue w3-round-xlarge" type="submit" name="CRN" value="<%=CRN%>">Deny</button>
        </form>
        </td>
        </tr>
        <%
                  }
                }
              }
            }
          }
          if (flag == false) {
        %>
        <h1><div class="w3-center">You have no red card requests</div></h1>
        <%
          }

        %>
        </body>
        </html>
