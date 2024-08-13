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
        <title>Teacher Update Form</title>
        <!-- Include Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h1 class="mb-4">Teacher Update Form</h1>

            <form action="updateemployee.jsp" method="post">
                <!-- Hidden input for ID -->
                <input type="hidden" name="id" value="<%=e.getId()%>">

                <!-- Name input -->
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="<%=e.getName()%>" required>
                </div>

                <!-- Department select -->
                <div class="form-group">
                    <label for="department">Department:</label>
                    <select class="form-control" id="department" name="department" required>
                        <option value="">Please Select</option>
                        <option value="Java" <%= "Java".equals(e.getDepartment()) ? "selected" : "" %>>Java</option>
                        <option value="C#" <%= "C#".equals(e.getDepartment()) ? "selected" : "" %>>C#</option>
                        <option value="PHP" <%= "PHP".equals(e.getDepartment()) ? "selected" : "" %>>PHP</option>
                    </select>
                </div>

                <!-- Gender radio buttons -->
                <div class="form-group">
                    <label>Gender:</label>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" id="male" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %> required>
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" id="female" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %>>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" id="others" name="gender" value="Others" <%= "Others".equals(e.getGender()) ? "checked" : "" %>>
                        <label class="form-check-label" for="others">Others</label>
                    </div>
                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>

        <!-- Include Bootstrap JS and dependencies (Optional, for interactive components) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

