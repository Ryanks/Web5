<%-- 
    Document   : RedCard
    Created on : Feb 5, 2017, 12:24:27 PM
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
        <h3>Please type in the CRN number you need to be sent and approved by the teacher</h3>
        <form action ="SubmitRedCard.jsp">
            <input type="text">
            <button type="Submit">Submit</button>
        </form>
        <br><br>
        <h1>Courses in progress:</h1>
        <table class="w3-table w3-striped">
            <tr>
                <td>Course</td>
                <td>Instructor</td>
                <td>Status of red card</td>
            </tr>
            <tr>
                <th>Software Engineering</th>
                <th>Nadimpali Mahadev</th>
                <th>waiting</th>
            </tr>
        </table>
    </body>
</html>
