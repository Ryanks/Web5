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
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
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

            
                <%
                    DBConnect ab1 = new DBConnect();
                    String abSql = "Select COUNT(*) from courses";
                  
                    String asql = ab1.queryDB(abSql);
                    asql = asql.replace(", ", "");
                    int bsql = Integer.parseInt(asql);
                    int counter = 1;
                    for (int q = 0; q < bsql; q++) {
                        String tempz = "select * from courses limit " + q +",1";
                        String splitz = ab1.queryDB(tempz);
                        String[] splitx = splitz.split(",");
                        out.println("<tr>");
                        for(int y = 0; y<splitx.length;y++){
                            out.println("<td>");
                            out.println(splitx[y]);
                            out.println("</td>");
                        
                        }
                        out.println("</tr>");
                    }
                    %>
                    
                       
                            
                            
                        
                    
                    
                %>
                            
                            
           

            

        </table>
    </body>
</html>
