<%-- 
    Document   : loginAction
    Created on : Nov 2, 2016, 11:37:39 AM
    Author     : nmahadev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print("<h1>Howdee</h1>");
            String user = request.getParameter("username");
            String pwd = request.getParameter("password");
            String sql = "select username, typeOfMember from account where username = ?" + " and Password = ?";
            //' or ''=''
            
            DBConnect dbConnect = new DBConnect();
            String result = dbConnect.queryDB(sql, user, pwd);
            //out.println(result);
            if (result.length() == 0) {
                response.sendRedirect("index.jsp");
            } else {

                String values[] = result.split(", ");
                String username = values[0];
                session.setAttribute("user", username);
                int status = Integer.parseInt(values[1]);
                session.setAttribute("status", status);
                switch (status) {
                    case 1:
                        session.setAttribute("page", "admin");
                        response.sendRedirect("admin/admin.jsp");
                        break;

                    case 2:
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
