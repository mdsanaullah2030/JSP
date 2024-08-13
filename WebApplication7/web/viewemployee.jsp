<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="k" %>
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<%
List <Employee> list=EmployeeDao.viewAllEmployee();
request.setAttribute("List",list);

%>

<table class="table  table-bordered" style="height: 50%; width: 70%;">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Gender</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <k:forEach var="e" items="${List}">
            <tr>
                <td>${e.getId()}</td>
                <td>${e.getName()}</td>
                <td>${e.getDepartment()}</td>
                <td>${e.getGender()}</td>
                <td>
                    <a href="updateemployeeaddform.jsp?id=${e.getId()}" class="btn btn-primary btn-sm">Edit</a>
                    <a href="deleteemployee.jsp?id=${e.getId()}" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        </k:forEach>
    </tbody>
</table>

