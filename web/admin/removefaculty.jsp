<%-- 
    Document   : dropclass
    Created on : Feb 6, 2017, 11:44:10 PM
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
            <form name="getForm" action="updateremovefaculty.jsp" method="get">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="inputUsername"></td>
                </tr>
                    <td colspan="2">
                        <input type="submit" value="Remove Faculty">
                    </td>
                </tr>
                
            </form>
        </table>
    </center>
    </body>
</html>
