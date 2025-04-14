<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update student</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
	<%@ page import="com.AlumniSystem.bean.Student, com.AlumniSystem.dao.StudentDao" %>
	
	<%
	
	String id = request.getParameter("id");
	Student s = StudentDao.getStudentById(Integer.parseInt(id));
	%>
	
	<div class="min-h-screen flex items-center justify-center bg-gray-50 p-4">
  <form action="editstudent.jsp" method="post" class="w-full max-w-md bg-white rounded-lg shadow-md p-6 space-y-4">
    <input type="hidden" name="id" value="<%=s.getId()%>"/>
    
    <h2 class="text-2xl font-bold text-gray-800 mb-6">Edit Student</h2>
    
    <!-- Name Field -->
    <div>
      <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Name</label>
      <input 
        type="text" 
        id="name" 
        name="name" 
        value="<%=s.getName()%>"
        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
        required
      >
    </div>
    
    <!-- Email Field -->
    <div>
      <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email</label>
      <input 
        type="email" 
        id="email" 
        name="email" 
        value="<%=s.getEmail()%>"
        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
        required
      >
    </div>
    
    <!-- Course Field -->
    <div>
      <label for="course" class="block text-sm font-medium text-gray-700 mb-1">Course</label>
      <input 
        type="text" 
        id="course" 
        name="course" 
        value="<%=s.getCourse()%>"
        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
        required
      >
    </div>
    
    <!-- Submit Button -->
    <div class="pt-2">
      <button 
        type="submit" 
        class="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md transition duration-200 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2"
      >
        Update Student
      </button>
    </div>
  </form>
</div>
</body>
</html>