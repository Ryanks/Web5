<%-- 
    Document   : dropclass
    Created on : Feb 6, 2017, 11:44:10 PM
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
            <h1>Remove a Course</h1>
            </div>
    </head>
    <body>
        <br><br><br>
     <div style="margin-left:25%">
        <form>
            Course Code<br> <input type="text"  size="15" /><br><br><br>
            CRN<br> <input type="text"  size="15" /><br><br><br>
            Professor<br> <input type="text"  size="15" /><br><br><br>

            Semester:
            <select name="semester">
                <option value="Fall 2016">Fall 2016</option>
                <option value="Spring 2017">Spring 2017</option>
            </select>
            <br><br><br>
            <input type="button"  value="Remove Course" />
        </form>
     </div>
        
    </body>
</html>
