<%-- 
    Document   : loginAction
    Created on : Nov 14, 2016, 2:29:19 PM
    Author     : Ryan
    Description: Logs the user in if there is a username and password for an 
                 account matching what was entered in the login.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" 
        import="java.sql.*"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%//comment
      String user = request.getParameter("username");
      String pwd = request.getParameter("password");
      String sql = "select * from account where username = ?"
              + " and password = ?";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Web5", "root", "");
      PreparedStatement state = con.prepareStatement(sql);
      state.setString(1, user);
      state.setString(2, pwd);
      ResultSet result = state.executeQuery();
      if (result.next()) {
        if (result.getString(1) == null) {
          response.sendRedirect("index.jsp");
          return;
        }

        String username = result.getString(6);
        session.setAttribute("user", username);
        String name = result.getString(2);
        session.setAttribute("name", name);
        int status = result.getInt(5);
        session.setAttribute("status", status);
    %>
    <h1><div class="w3-center"><%=status%></div></h1>
    <%
        switch (status) {
          case 2:
            session.setAttribute("page", "admin");
            response.sendRedirect("admin/admin.jsp");
            break;

          case 1:
            session.setAttribute("page", "staff");
            response.sendRedirect("faculty/faculty.jsp");
            break;

          default:
            response.sendRedirect("student/studentMainPage.jsp");
        }
      }
    %>
  </body>
</html>
