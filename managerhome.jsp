<%@page import="com.klef.jfsd.model.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Manager m = (Manager)session.getAttribute("manager");
if(m==null)
{
	response.sendRedirect("managersessionfail");
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
<%@include file="managernavbar.jsp" %>
</body>
</html>