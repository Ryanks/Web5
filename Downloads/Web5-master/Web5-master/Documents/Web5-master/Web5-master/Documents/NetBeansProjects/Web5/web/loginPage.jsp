<%-- 
    Document   : loginPage
    Created on : Feb 5, 2017, 1:02:19 PM
    Author     : Sean O'Neil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel ="stylesheet" href ="styleSheets\login.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="background-image: url(fsu.gif);background-repeat:no-repeat;background-size:cover;">

        <div class="container">
            <div class="row">
                <div class="Absolute-Center is-Responsive">
                    <div id="logo-container"></div>
                    
                    <div class="col-sm-12 col-md-10 col-md-offset-1">
                        
                        <form action="registrationAction.jsp" id="loginForm">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input class="form-control" type="text" name='username' placeholder="Student ID"/>          
                            </div>
                            
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input class="form-control" type="password" name='password' placeholder="password"/>     
                            </div>

                            <div class="form-group">
                                <input type="submit" class="btn btn-info" value="Login">
                            </div>
                            <div class="form-group text-center">
                                <a href="#">Forgot Password</a>&nbsp;|&nbsp;<a href="#">Support</a>
                            </div>
                        </form>        
                    </div>  
                </div>    
            </div>
        </div>


    </body>
</html>
