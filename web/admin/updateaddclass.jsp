<%-- 
    Document   : UpdateClass
    Created on : Mar 1, 2017, 5:59:06 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
        <nav class="w3-sidenav w3-collapse w3-teal w3-card-2 w3-animate-left" style="width:200px;" id="mySidenav">
            <a href="javascript:void(0)" onclick="w3_close()" 
               class="w3-closenav w3-large w3-hide-large">Close &times;</a>



            
            <a href="#" id = rcAddClass>Add Class</a>
            <a href="#" id = rcRemoveClass>Remove Class</a>
            <a href="#" id = rcAddFaculty>Add Faculty</a>
            <a href="#" id = rcRemoveFaculty>Remove Faculty</a>
            <a href="#" id = rcAddStudent>Add Student</a>
            <a href="#" id = rcRemoveStudent>Remove Student</a>
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
        <%
        
        String name = request.getParameter("inputName");
        String courseNumber = request.getParameter("inputNumber");
        String crn = request.getParameter("inputCRN");
        String instructor = request.getParameter("inputInstructor");
        String semester = request.getParameter("inputSemester");
        String room = request.getParameter("inputRoom");
        String cap = request.getParameter("inputCap");
        String time = request.getParameter("inputTime");
        
        
        Connection conn=null;
        Statement st=null;
        Class.forName("com.mysql.jdbc.Driver");
        conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/web5", "root", "");
        
     
    String sql="insert into courses values(0,'"+name+"','"+time+"','"+instructor+"','"+crn+"','"+room+"','','"+cap+"',0,'','','"+semester+"','"+courseNumber+"')";
    st = conn.createStatement();
    st.executeUpdate(sql);
        %>
        <div align="center">
            <font size ="6" id="updateText">
            Course Added!
            <br><br><br>
        </font>
        </div>
    </body>
</html>
