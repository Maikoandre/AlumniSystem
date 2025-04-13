<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update student</title>
</head>
<body>
	<%@ page import="com.AlumniSystem.bean.Student, com.AlumniSystem.dao.StudentDao" %>
	
	<%
	
	String id = request.getParameter("id");
	Student s = StudentDao.getStudentById(Integer.parseInt(id));
	%>
	
	<h1>Updating student</h1>
	
	<form action="editstudent.jsp" method="post">
		<input type="hidden" name="id" value="<%=s.getId()%>"/>
		<table>
			<tr>
				<td>Name: </td>
				<td><input type="text" name="name" value="<%=s.getName()%>"/></input></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email" value="<%=s.getEmail()%>"/></input></td>
			</tr>
			<tr>
				<td>Course: </td>
				<td><input type="text" name="course" value="<%=s.getCourse()%>"/></input></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit student"></input></td>
			</tr>
		</table>
	</form>
	
	
	
	
	
	
	
</body>
</html>