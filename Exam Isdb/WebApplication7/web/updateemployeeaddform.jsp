<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>

<%
String id=request.getParameter("id");

Employee e=EmployeeDao.getById(Integer.parseInt(id));
%>       

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Teacher Update Table</h1>

        <form action="updateemployee.jsp" method="post">
            <input type="hidden" name="id" value="<%=e.getId()%>">

            Name: <input type="text" name="name" value="<%=e.getName()%>"> <br><br>

            Department: <br><br>
            <select name="department">
                <option value="">Please Select</option>
                <option value="Java" <%= "Java".equals(e.getDepartment()) ? "selected" : "" %>>Java</option>
                <option value="C#" <%= "C#".equals(e.getDepartment()) ? "selected" : "" %>>C#</option>
                <option value="PHP" <%= "PHP".equals(e.getDepartment()) ? "selected" : "" %>>PHP</option>
            </select>
            <br><br>
            Gender: <br><br>
            <input type="radio" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %> /> Male

            <input type="radio" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %> /> Female

            <input type="radio" name="gender" value="Others" <%= "Others".equals(e.getGender()) ? "checked" : "" %> /> Others

            <br><br>


            <input type="submit" value="Update">

        </form>
    </body>
</html>
