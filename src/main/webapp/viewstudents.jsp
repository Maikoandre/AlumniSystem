
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.AlumniSystem.dao.StudentDao, com.AlumniSystem.bean.*, java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    
    List<Student> list = StudentDao.getAll();
   	request.setAttribute("list", list);
   	
   	%>
   	<div class="min-h-screen flex flex-col items-center justify-center p-4">
   	  <h1 class="text-3xl font-bold text-gray-800">Listing students</h1>
   	
   	<table class="w-full max-w-4xl text-lg border border-gray-300 shadow-lg">
  
   		<thead class="bg-gray-100">
   			<tr>
   				<th class="p-4 border-b border-gray-300 text-left">ID</th>
   				<th class="p-4 border-b border-gray-300 text-left">Name</th>
   				<th class="p-4 border-b border-gray-300 text-left">Email</th>
   				<th class="p-4 border-b border-gray-300 text-left">Course</th>
   				<th class="p-4 border-b border-gray-300 text-left">Update</th>
   				<th class="p-4 border-b border-gray-300 text-left">Delete</th>
   			</tr>
   		</thead>
   		<tbody>
   			<c:forEach items="${list}" var="student">
				<tr class="hover:bg-gray-50">
					<td class="p-4 border-b border-gray-200">${student.getId()}</td>
					<td class="p-4 border-b border-gray-200">${student.getName()}</td>
					<td class="p-4 border-b border-gray-200">${student.getEmail()}</td>
					<td class="p-4 border-b border-gray-200">${student.getCourse()}</td>
					<td class="p-4 border-b border-gray-200"><a href="editform.jsp?id=${student.getId()}">Update</a></td>
					<td class="p-4 border-b border-gray-200"><a href="deletestudent.jsp?id=${student.getId()}">Delete</a></td>
				</tr>
			</c:forEach>
   		</tbody>
		
   	</table>
   	<a href="addstudentform.jsp" class="inline-block px-6 py-3 bg-blue-600 text-white font-medium rounded-lg hover:bg-blue-700 transition-colors shadow">
    Register new student
  </a>
   	</div>
</body>
</html>