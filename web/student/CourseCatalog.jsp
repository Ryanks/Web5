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
                <td>ID</td>
                <td>Name</td>
                <td>Time</td>
                <td>Instructor</td>
                <td>CRN</td>
                <td>Room Location</td>
                <td>Prerequisites</td>
                <td>Max number of students</td>
                <td>Current Number of students</td>
                <td>LAB</td>
                <td>LAS</td>
                <td>Term</td>
                <td>Course Number</td>


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
                    
                       
                            
                            
                        
                    
                    
                
                            
                            
           

            

        </table>
    </body>
</html>
