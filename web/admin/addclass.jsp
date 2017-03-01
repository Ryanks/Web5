<%-- 
    Document   : addclass
    Created on : Feb 6, 2017, 11:44:00 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <div class="w3-container w3-teal" align="center">
            <h1>Add a Course</h1>
            </div>
    </head>
    <body>
    <center>
        <table border="1">
            <form name="getForm" action="updateClass.jsp" method="get">
                <tr>
                    <td>Course Code</td>
                    <td><input type="text" name="inputCode"></td>
                </tr>
                <tr>
                    <td>CRN</td>
                    <td><input type="text" name="inputCRN"></td>
                </tr>
                <tr>
                    <tr>
                    <td>Professor</td>
                    <td><input type="text" name="inputProf"></td>
                </tr>
                <tr>
                    <td>Semester</td>
                    <td><input type="text" name="inputSemester"></td>
                </tr>
                    <td colspan="2">
                        <input type="submit" value="Add Course">
                    </td>
                </tr>
            </form>
        </table>
    </center>
    </body>
</html>
