<%-- 
    Document   : RedCard
    Created on : Feb 5, 2017, 12:24:27 PM
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
        <h3>Please type in the CRN number you need to be sent and approved by the teacher</h3>
        <form action ="SubmitRedCard.jsp">
            <input name = "RedCard" type="text">
            <button name ="AddRedCard" type="Submit">Submit</button>
        </form>
        <br><br>
        <h1>Courses in progress:</h1>
        <table class="w3-table w3-striped">
            <tr>
                <td>Course</td>
                
                <td>Status of red card</td>
            </tr>
            <tr>
                <%
                    DBConnect db68 = new DBConnect();
                    String getRCSql = "select CRN, red_card_initializer from course_account where SchoolID = " + session.getAttribute("id");
                    String getRC = db68.queryDB(getRCSql);
                    String[] splitRC = getRC.split(",");
                    
                    for (int z = 0; z < splitRC.length-1; z++) {
                        out.println("<tr>");
                        splitRC[z] = splitRC[z].replace(","," ");
                        
                        if (((splitRC[z].equals(" 1")) || (splitRC[z].equals(" 2")))) {
                           String getClassSql = "select Name from courses where CRN = " + splitRC[z-1];
                            String getClass = db68.queryDB(getClassSql);
                            getClass = getClass.replace(","," ");
                %>

                <th><%= getClass%></th>
                
                <th>
                    <%
                        if (splitRC[z].equals(" 0")) {

                    %>
                <td>accepted</td>
                <%} else if (splitRC[z].equals(" 2")) {

                %>
                <td>denied</td>
                <%} else {%>
                <td>waiting</td>
                <%}}
                            
                         else {
                            continue;
                            }}%>
            <br>


            </tr>
        </table>
    </body>
</html>
