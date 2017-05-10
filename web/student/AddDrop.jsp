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
            
            String crnSql = "select CRN from course_account where SchoolID = '" + session.getAttribute("id")+"' and red_card_initializer = 0 and semester = \"" + session.getAttribute("theSemester") + "\"";
            String crns = db4.queryDB(crnSql);
            String values[] = crns.split(", ");
            if(crns!=""){
              
            
        %>
        <form action = "DropClass.jsp">
            <table class="w3-table w3-striped">
                <tr>
                    <td>Course</td>
                    <td>Instructor</td>
                    <th>time</th>
                    
                </tr>
                <%
                for(int k=0;k<values.length;k++){
                String tempcrn = "select * from courses where CRN = '" + values[k]+"' ";
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
                    

                </tr>
                <%}}%>
                
            </table>
            <br>

            
        </form>

                
        <form action = "AddClass.jsp">
            <h3>To add a new course, type in the CRN number</h3>
            <input type="text" name="crn" ><br>
            <form>
                <button name ="AddClass" type ="submit">Add Class</button>
            </form>
       <form action = "DropClass.jsp">
            <h3>To Drop a course, type in the CRN number</h3>
            <input type="text" name="crn1" ><br>
            <form>
                <button name ="DropClass" type ="submit">Drop Class</button>
            </form>
    </body>
</html>
