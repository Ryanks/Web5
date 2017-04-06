<%-- 
    Document   : studentMainPage
    Created on : Feb 5, 2017, 12:24:06 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src ="showStudentOptions.js"></script>
    </head>
    <body>
        <%
            DBConnect ab = new DBConnect();
            if(session.getAttribute("user")=="")
                response.sendRedirect("index.jsp");
            
            String IDsql = "select ID from account where Username = '" + session.getAttribute("user")+"'";
            String theid = ab.queryDB(IDsql);
            theid = theid.replace(",", "");
            session.setAttribute("id",theid);
        %>
        
        <h1>Welcome <%out.println(session.getAttribute("name"));%></h1>
        <nav class="w3-sidenav w3-collapse w3-white w3-card-2 w3-animate-left" style="width:200px;" id="mySidenav">
            <a href="javascript:void(0)" onclick="w3_close()" 
               class="w3-closenav w3-large w3-hide-large">Close &times;</a>



            <div class="w3-dropdown-hover">
                <a href="#" id = rcTerm>Select Term</a>
                <form action = "selectTerm.jsp">
                    <div class="w3-dropdown-content w3-white w3-card-4" >
                        <ul>
                            <a><button type ="submit" style = "padding: 0;border: none;background: none;visited,link{text-decoration: none}">Fall 2017</button></a>
                            <a><button type ="submit" style = "padding: 0;border: none;background: none;visited,link{text-decoration: none}">Spring 2018</button></a>
                            <a><button type ="submit" style = "padding: 0;border: none;background: none;visited,link{text-decoration: none}">Fall 2018</button></a>
                        </ul>
                    </div>
                </form>
            </div>
            <a href="#" id = rcCatalog>Course Catalog</a>
            <a href="#" id = rcADC>Add/drop Classes</a>
            <a href="#" id = rcDS>Student Detail Schedule</a>
            <a href="#" id = rcRedCard>Red Card into class</a>
            <a href="#" id = rcGrade>Grades</a>
        </nav>


        <div class="w3-main" style="margin-left:200px" id ="redcard">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%--<%@include file ="RedCard.jsp" %>--%>
            </header>
        </div>
            
        <div class="w3-main" style="margin-left:200px" id ="grade">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="Grades.jsp" %>
            </header>
        </div>
            <div class="w3-main" style="margin-left:200px" id ="coursecatalog">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="CourseCatalog.jsp" %>
            </header>
        </div>
            <div class="w3-main" style="margin-left:200px" id ="AddDrop">
            <header class="w3-container">
                <span class="w3-opennav w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</span>
                <%@include file ="AddDrop.jsp" %>
            </header>
        </div>


    </body>
</html>
