<%-- 
    Document   : studentaddfrom
    Created on : Jul 5, 2024, 10:19:57 PM
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
        <h1>Student Form</h1>
        <form action="savestudent.jsp" method="post" >
            Name:<input type="text" name="name"><br> 
            Email:<input type="email" name="email"> <br> 
            
            <input type="submit" value="save">
            
            
        </form>
    </body>
</html>
