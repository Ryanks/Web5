<%-- 
    Document   : Grades
    Created on : Feb 8, 2017, 9:33:47 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Here are the final grades of the semester</h1>

        <table class="w3-table w3-striped">
            <tr>
                <td>Course</td>
                <td>Grade</td>                
            </tr>
            <tr>
                <%
                    DBConnect db = new DBConnect();
                    String gradeSql = "select CRN, Grade from course_account where SchoolID = '" + session.getAttribute("id") + "'";
                    String grades = db.queryDB(gradeSql);
                    String[] grade = grades.split(",");

                %>

                <%                    for (int a = 0; a < grade.length; a++) {
                %>
                <th>

                    <%String sqlClass = "select Name from courses where CRN = '" + grade[a] + "'";
                        String cclass = db.queryDB(sqlClass);
                    %>
                    <%= cclass%>


                </th>
                <th>
                    <%String sqlGrade = "select Grade from course_account where CRN = '" + grade[a] + "'";
                        String cGrade = db.queryDB(sqlGrade);
                        a++;
                    %>
                    <%= cGrade%>

                </th>
            
                <%  out.println();}%>
            </tr>
        </table>
    </body>
</html>
