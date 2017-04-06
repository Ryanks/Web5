<%-- 
    Document   : AddDrop
    Created on : Feb 5, 2017, 1:41:50 PM
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
        <h1>Here are your current classes this semester</h1>

        <%
            DBConnect db4 = new DBConnect();
            
            String crnSql = "select CRN from course_account where SchoolID = '" + session.getAttribute("id")+"'";
            String crns = db4.queryDB(crnSql);
            String values[] = crns.split(", ");
        %>
        <form action = "DropClass.jsp">
            <table class="w3-table w3-striped">
                <tr>
                    <td>Course</td>
                    <td>Instructor</td>
                    <th>time</th>
                    <th>Drop Option</th>
                </tr>
                <%
                for(int k=0;k<values.length;k++){
                String tempcrn = "select * from courses where CRN = '" + values[k]+"'";
                String tempclass = db4.queryDB(tempcrn);
                String tempResults[] = tempclass.split(",");
                String className = tempResults[1];
                String instruct = tempResults[3];
                String time = tempResults[2];
            
            
                %>
                <tr>
                    <th><%=className%></th>
                    <th><%=instruct%></th>
                    <th><%=time%></th>
                    <th><input type="checkbox"></th>

                </tr>
                <%}%>
                
            </table>
            <br>

            <button name ="drop" type ="submit" value = "Drop Class">Drop Class</button>
        </form>

                
        <form action = "AddClass.jsp">
            <h3>To add a new course, type in the CRN number</h3>
            <input type="text" name="crn" ><br>
            <form>
                <button name ="AddClass" type ="submit">Add Class</button>
            </form>
        </form>
    </body>
</html>
