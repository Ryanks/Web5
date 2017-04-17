<%-- 
    Document   : addclass
    Created on : Feb 6, 2017, 11:44:00 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table border="1" cellpadding="30">
            <form name="getForm" action="updateaddclass.jsp" method="get">
                <tr>
                    <td>Course Name</td>
                    <td><input type="text" name="inputName"></td>
                </tr>
                <tr>
                    <td>Course Number</td>
                    <td><input type="text" name="inputNumber"></td>
                </tr>
                <tr>
                    <td>CRN</td>
                    <td><input type="text" name="inputCRN"></td>
                </tr>
                <tr>
                    <tr>
                    <td>Instructor</td>
                    <td><input type="text" name="inputInstructor"></td>
                </tr>
                <tr>
                    <td>Semester</td>
                    <td><input type="text" name="inputSemester"></td>
                </tr>
                <tr>
                    <td>Room</td>
                    <td><input type="text" name="inputRoom"></td>
                </tr>
                <tr>
                    <td>Student Cap</td>
                    <td><input type="text" name="inputCap"></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><input type="time" name="inputTime"></td>
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