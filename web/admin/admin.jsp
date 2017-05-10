<%-- 
    Document   : faculty
    Created on : Feb 6, 2017, 4:49:10 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src ="showAdminOptions.js"></script>
    </head>

    <body>
    <h1>Welcome, <%out.println(session.getAttribute("name"));%></h1>
        <nav class="w3-sidenav w3-collapse w3-teal w3-card-2 w3-animate-left" style="width:200px;" id="mySidenav">
            <a href="javascript:void(0)" onclick="w3_close()" 
               class="w3-closenav w3-large w3-hide-large">Close &times;</a>

            <a href="#" id = rcAddClass>Add Class</a>
            <a href="#" id = rcRemoveClass>Remove Class</a>
            <a href="#" id = rcAddFaculty>Add Faculty</a>
            <a href="#" id = rcRemoveFaculty>Remove Faculty</a>
            <a href="#" id = rcAddStudent>Add Student</a>
            <a href="#" id = rcRemoveStudent>Remove Student</a>
            <a href="../Logout.jsp" id = logout>Logout</a>
        </nav>


        <div class="w3-main" style="margin-left:200px" id ="AddClass">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="addclass.jsp" %>
            </header>
        </div>
        <div class="w3-main" style="margin-left:200px" id ="RemoveClass">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="removeclass.jsp" %>
            </header>
        </div>    
            
        <div class="w3-main" style="margin-left:200px" id ="AddFaculty">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="addfaculty.jsp" %>
            </header>
        </div>
        <div class="w3-main" style="margin-left:200px" id ="RemoveFaculty">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="removefaculty.jsp" %>
            </header>
        </div>  
            
        </div>
            <div class="w3-main" style="margin-left:200px" id ="AddStudent">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="addstudent.jsp" %>
            </header>
        </div>
            <div class="w3-main" style="margin-left:200px" id ="RemoveStudent">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="removestudent.jsp" %>
            </header>
        </div>
    </body>