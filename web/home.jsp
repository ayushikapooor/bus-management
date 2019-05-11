<%-- 
    Document   : home
    Created on : 12-Mar-2019, 00:30:16
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME PAGE</title>
        <link rel="stylesheet" type="text/css" href="home.css">
    </head>
    <body>
        <header>
            <div class="row">
                <ul class="main-nav">
                    <li><a href="#">HOME</a></li>
                    <li><a href="about.jsp">ABOUT US</a></li>
                    <li><a href="#">CONTACT</a></li>
                    <li><a href="#">NEWS</a></li>
                    <li><a href="#">COMPLAINT</a></li>
                    <li><a href="#">FAQ</a></li>
                    
                </ul>
            </div>
            
            <div class="hero">
                <h1> Select Your Type</h1>
                <div class="button">
                    <a href="student.jsp" class="btn btn-one"> STUDENT</a>
                     <a href="management.jsp" class="btn btn-two"> ADMIN</a>
                     <a href="faculty.jsp" class="btn btn-three"> FACULTY</a>
                </div>
            </div>
            
            
            
        </header>
    </body>
</html>