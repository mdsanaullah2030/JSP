<%-- 
    Document   : studentaddfrom
    Created on : Jul 1, 2024, 9:51:44 AM
    Author     : Sanaullah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student From </h1>
        <form action="savestudent.jsp" method="post">
            Name: <input type="text" name="name"> <br>
            Email:<input type="email" email="email"> <br>
            
            <input type="submit" value="Save">
           
            
        </form>
    </body>
</html>