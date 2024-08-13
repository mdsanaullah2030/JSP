

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Teacher Table</h1>
        <form action="saveemployee.jsp" method="post">
            Name:<input type="text" name="name"><br><br>

            Department: <br><br>
            <select name="department">
                <option value="">Please Select</option>
                <option value="Java">Java</option>
                <option value="C#">C#</option>
                <option value="PHP">PHP</option>
            </select>
            <br><br>
            Gender:<br><br>
            <input type="radio" name="gender" value="Male"/> Male
            <input type="radio" name="gender" value="Female"/> Female
            <input type="radio" name="gender" value="Others"/> Others
            <br><br>

            <input type="submit" value="Save Data">
        </form>
    </body>
</html>
