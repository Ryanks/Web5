<%-- 
    Document   : StudentSchedule
    Created on : Feb 5, 2017, 1:42:00 PM
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
        <h1>Here are your current classes this semester</h1>
        <table class="w3-table w3-striped">
            <tr>
                <td>Course</td>
                <td>Instructor</td>
                <td>Time</td>
                <td>Room Location</td>
            </tr>
            
        
        <%
            DBConnect ab2 = new DBConnect();
            String abSql = "Select CRN from courses_account where SchoolID = '" + session.getAttribute("id") + "'";
            String lOCrn = ab2.queryDB(abSql);
            String [] crns = lOCrn.split(",");
            String course_Details;
            int count = 1;
            for(int i = 0;i<crns.length-1;i++){
                if(count==4){
                    out.println("<br>");
                    count = 1;
                    continue;
                }
            
             course_Details = "Select Name, Instructor, Time, room_location where CRN = '" +crns[i] + "'";
             String getCD = ab2.queryDB(course_Details);
             String [] getCD1 = getCD.split(",");
             out.println("<tr>");
             for(int j= 0;j<getCD1.length;j++){
                 out.println("<td>"+ getCD1[j]+"</td>");
             }
             out.println("</tr>");
            count++;
            }
        %>
        
        
        </table>
    </body>
</html>
