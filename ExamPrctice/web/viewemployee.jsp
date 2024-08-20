<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="k" %>
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<%
List <Employee> list=EmployeeDao.viewAllEmployee();
request.setAttribute("List",list);

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Table</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            /* Custom styles for table size */
            .custom-table {
                height: 50%;
                width: 50%;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <table class="table table-bordered custom-table">
                <thead class="thead-light">
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
                                <a href="updateemployeeaddform.jsp?id=${e.getId()}" class="btn btn-sm btn-primary">Edit</a>
                                <a href="deleteemployee.jsp?id=${e.getId()}" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    </k:forEach>
                </tbody>
            </table>
        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>


