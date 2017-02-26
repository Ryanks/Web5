<%-- 
    Document   : removefaculty
    Created on : Feb 7, 2017, 12:21:30 AM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <div class="w3-container w3-teal" align="center">
            <h1>Remove a Faculty Member</h1>
            </div>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br>
     <div style="margin-left:25%">
        <form>
            Name<br> <input type="text"  size="15" /><br><br><br>
            Email<br> <input type="text"  size="15" /><br><br><br>
            Faculty ID<br> <input type="text"  size="15" /><br><br><br>
            Department<br>
            <select name="dept">
                <option value="Mathematics">Mathematics</option>
                <option value="Computer Science">Computer Science</option>
                <option value="English">English</option>
                <option value="Exercise Science">Exercise Science</option>
                <option value="History">History</option>
                <option value="Arts">Arts</option>
                <option value="Biology">Biology</option>
                <option value="Business">Business</option>
            </select>
            <br><br><br>
            <input type="button"  value="Remove Faculty" />
        </form>
     </div>
    </body>
</html>
