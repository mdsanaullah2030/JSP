<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>

<%
String id=request.getParameter("id");

Employee e=EmployeeDao.getById(Integer.parseInt(id));
%>       

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Update Table</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1 class="my-4">Teacher Update Table</h1>

            <form action="updateemployee.jsp" method="post">
                <input type="hidden" name="id" value="<%=e.getId()%>">

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" value="<%=e.getName()%>">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="department">Department:</label>
                            <select class="form-control" id="department" name="department">
                                <option value="">Please Select</option>
                                <option value="Java" <%= "Java".equals(e.getDepartment()) ? "selected" : "" %>>Java</option>
                                <option value="C#" <%= "C#".equals(e.getDepartment()) ? "selected" : "" %>>C#</option>
                                <option value="PHP" <%= "PHP".equals(e.getDepartment()) ? "selected" : "" %>>PHP</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Gender:</label><br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="genderMale" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %>>
                                <label class="form-check-label" for="genderMale">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="genderFemale" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %>>
                                <label class="form-check-label" for="genderFemale">Female</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" id="genderOthers" name="gender" value="Others" <%= "Others".equals(e.getGender()) ? "checked" : "" %>>
                                <label class="form-check-label" for="genderOthers">Others</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
>

