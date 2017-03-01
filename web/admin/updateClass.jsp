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
    </head>
    <body>
        <%
            
        String courseCode = request.getParameter("inputCode");
        String crn = request.getParameter("inputCRN");
        String prof = request.getParameter("inputProf");
        String semester = request.getParameter("inputSemester");
        
        Connection conn=null;
        Statement st=null;
        
try
{
    Class.forName("com.mysql.jdbc.Driver");
    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/web5", "root", "");
    
    String sql="INSERT INTO `test` (`Course Code`, `CRN`, `Instructor`, `Semester`) VALUES ('"+courseCode+"', '"+crn+"', '"+prof+"', '"+semester+"');";
    st = conn.createStatement();
    
    int i = st.executeUpdate(sql);
    
    out.print("It worked!");
}catch(Exception e)
{
    out.print("Code Error");
}
        
        
        %>
    </body>
</html>
