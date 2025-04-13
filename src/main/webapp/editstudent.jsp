<%@ page import="com.AlumniSystem.dao.StudentDao"%>
<jsp:useBean id="s" class="com.AlumniSystem.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>
<%
	int i = StudentDao.updateStudent(s);	

	response.sendRedirect("viewstudents.jsp");
%>