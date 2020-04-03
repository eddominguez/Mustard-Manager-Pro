<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 
String empName = String.valueOf(session.getAttribute("empName"));
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Name</title>
</head>
<body>
The name for the ID is:<br>
<%=empName%>
</body>
</html>