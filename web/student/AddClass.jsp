<%-- 
    Document   : AddClass
    Created on : Feb 13, 2017, 8:34:27 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "myBeans.DBConnect" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            
            //boopdaboopda4jjjj4
            
            
            
            
        String crn =request.getParameter("crn");
        DBConnect db3 = new DBConnect();
        
        
        out.println(session.getAttribute("id"));
        String maxStuds = "select Max_number_of_students from courses where CRN = '"+crn +"'";
        String currentStuds = "select Current_number_of_students from courses where CRN = '"+crn +"'";
        String mxS = db3.queryDB(maxStuds);
        String temp1 = "";
        for(int p = 0;p<mxS.length();p++){
            char temp = mxS.charAt(p);
            if(temp ==','){
            break;
            }
            temp1 = temp1 + temp; 
        }
        mxS = temp1;
        int maxs = Integer.parseInt(mxS);
        
        temp1 = "";
        String cxS = db3.queryDB(currentStuds);
        String temp2 = cxS;
        for(int p = 0;p<cxS.length();p++){
            char temp = cxS.charAt(p);
            if(temp ==','){
            break;
            }
            temp1 = temp1 + temp; 
        }
        cxS = temp1;
        int curs = Integer.parseInt(cxS);
        
        if(curs<maxs){
        String sql = "insert into course_account values (0,'" + session.getAttribute("id") + "','" + crn + "','" + 0 + "','" +0 + "')";
        db3.updateDB(sql);
        curs++;
        String updateSched = "update courses set Current_number_of_students = '"+ curs +"' where CRN = '" + crn+"'" ;
        db3.updateDB(updateSched);
        response.sendRedirect("studentMainPage.jsp");
        }
        else{
        response.sendRedirect("studentMainPage.jsp");
        }
        %>
    </body>
</html>
