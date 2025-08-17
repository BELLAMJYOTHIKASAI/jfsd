<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
if(s==null)
{
	response.sendRedirect("studentsessionfail");
	return;
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
</head>
<body>
<%@include file="studentnavbar.jsp" %>
</body>
</html>