<%@ page import="com.AlumniSystem.dao.StudentDao" %>
<jsp:useBean id="s" class="com.AlumniSystem.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"></jsp:setProperty>

<%
	int i =  StudentDao.addStudent(s);

	if(i > 0){
		response.sendRedirect("addstudent-success.jsp");
	}else{
		response.sendRedirect("addstudent-error.jsp");
	}
	
	
%>




