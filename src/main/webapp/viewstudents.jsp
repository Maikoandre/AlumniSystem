
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>
</head>
<body>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.AlumniSystem.dao.StudentDao, com.AlumniSystem.bean.*, java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <h1>Listing students</h1>
    
    <%
    
    List<Student> list = StudentDao.getAll();
   	request.setAttribute("list", list);
   	
   	%>
   	
   	<table border="1">
   		<tr>
   			<th>ID</th>
   			<th>Name</th>
   			<th>Email</th>
   			<th>Course</th>
   			<th>Update</th>
   			<th>Delete</th>
   		</tr>
		<c:forEach items="${list}" var="student">
			<tr>
				<td>${student.getId()}</td>
				<td>${student.getName()}</td>
				<td>${student.getEmail()}</td>
				<td>${student.getCourse()}</td>
				<td><a href="editform.jsp?id=${student.getId()}">Update</a></td>
				<td><a href="deletestudent.jsp?id=${student.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
   	</table>
   	<br>
   	<a href="addstudentform.jsp">Register new student</a>
</body>
</html>