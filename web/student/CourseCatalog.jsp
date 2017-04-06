<%-- 
    Document   : CourseCatalog
    Created on : Feb 5, 2017, 1:41:40 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Here are the courses for the semester</h1>

        <table class="w3-table w3-striped">
            <tr>
                <td>Course Number</td>
                <td>CRN</td>
                <td>LAS</td>
                <td>Lab</td>
                <td>Section</td>
                <td>Prereqs</td>
                <td>Actual</td>
                <td>Max</td>
                <td>Available</td>
                <td>Faculty</td>
                <td>Room Location</td>
                <td>Days</td>
                <td>Time</td>


            </tr>
            <tr>
                <td>CSC 4400</td>
                <td>30243</td>
                <td></td>
                <td>No</td>
                <td>01</td>
                <td>Y</td>
                <td>11</td>
                <td>20</td>
                <td>9</td>
                <td>Mahadev,Nadimpali</td>
                <td>EDG 201</td>
                <td>T R</td>
                <td>9:30AM-10:45AM</td>


            </tr>

            <tr>
                <%
                    DBConnect ab1 = new DBConnect();
                    String abSql = "Select * from courses where 1";
                    String asql = ab1.queryDB(abSql);
                    String[] bsql = asql.split(",");
                    int counter = 1;
                    for (int q = 0; q < bsql.length; q++) {
                        if (counter == 10) {
                %>
                            <br>
                            <%counter = 1;}
            else{
                counter++;
            }
            %>
            <td><%out.println(bsql[q]);}%></td>

            </tr>

        </table>
    </body>
</html>
