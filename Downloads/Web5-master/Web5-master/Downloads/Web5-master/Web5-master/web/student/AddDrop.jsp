<%-- 
    Document   : AddDrop
    Created on : Feb 5, 2017, 1:41:50 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Here are your current classes this semester</h1>
        <form action = "DropClass.jsp">
        <table class="w3-table w3-striped">
            <tr>
                <td>Course</td>
                <td>Instructor</td>
                <th>time</th>
                <th>Drop Option</th>
            </tr>
            <tr>
                <th>Software Engineering</th>
                <th>Nadimpali Mahadev</th>
                <th>T TH   9:30-10:45</th>
                <th><input type="checkbox"></th>

            </tr>
            <tr>
                <th>Data Science</th>
                <th>Orlando Montalvo</th>
                <th>T TH   3:30-445</th>
                <th><input type="checkbox"></th>

            </tr>
            <tr>
                <th>Intro to Speech</th>
                <th>Angela Nastasse-Carder</th>
                <th>T TH   8:00-9:15</th>
                <th><input type="checkbox"></th>

            </tr>
        </table>
        <br>
        
            <button name ="drop" type ="submit" value = "Drop Class">Drop Class</button>
        </form>

        
        <form action = "AddClass.jsp">
            <h3>To add a new course, type in the CRN number</h3>
            <input type="text" name="crn" ><br>
            <form>
            <button name ="add" type ="submit" name = "AddClass">Add Class</button>
        </form>
        </form>
    </body>
</html>
