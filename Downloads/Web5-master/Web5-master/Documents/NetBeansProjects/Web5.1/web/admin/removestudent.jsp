<%-- 
    Document   : removestudent
    Created on : Feb 7, 2017, 12:32:42 AM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <div class="w3-container w3-teal" align="center">
            <h1>Remove a Student</h1>
            </div>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br>
     <div style="margin-left:25%">
        <form>
            Student Name<br> <input type="text"  size="15" /><br><br><br>
            Student ID<br> <input type="text"  size="15" /><br><br><br>
            Email<br> <input type="text"  size="15" /><br><br><br>
            Major<br> <input type="text"  size="15" /><br><br><br>
            <br><br><br>
            <input type="button"  value="Remove Student" />
        </form>
     </div>
        
    </body>
</html>
