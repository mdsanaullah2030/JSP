<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>
<%@page import="java.util.*" %>
<%
List<Student> list=StudentDao.viewAllStudent();
request.setAttribute("list",list);


%>
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th></th>
            
        </tr>
        
    </thead>
    <tbody>
        <c:forEach var="s" items="${list}">
            
            
        </c:forEach>
    </tbody>
    
    
</table>
