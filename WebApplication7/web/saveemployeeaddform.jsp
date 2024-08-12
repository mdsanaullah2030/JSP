

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Employee Table</h1>
        <form action="saveemployee.jsp"method="post">
            Name:<input type="text" name="name"><br><br>
            Email:<input type="email" name="email"><br><br>
            Gender<input type="radio" name="gender"><br><br>
            Subject:<input type="text" name="subject"><br><br>

            <input type="submit" value="Save Data">
        </form>
    </body>
</html>
