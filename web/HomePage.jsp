<%-- 
    Document   : HomePage
    Created on : Jan 25, 2017, 8:32:22 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel ="stylesheet" href ="styleSheets\hPStyle.css">
    </head>
    <body>
        <%@include file = "header.jsp"%>
        <div style="margin-left:200px; margin-top: 1cm;">
            
            <a href ="loginPage.jsp"><button>Enter Secure Area</button></a>
            <a href ="student/CourseCatalog.jsp"><button>Course Catalog</button></a>
        </div>
    </body>
</html>
