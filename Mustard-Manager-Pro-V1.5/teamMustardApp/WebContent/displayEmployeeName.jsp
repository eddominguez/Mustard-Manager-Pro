<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<% 
List<Integer> SubordinationList = (List<Integer>) session.getAttribute("SubordinationList");
String PrintableList = new String();
for(int i = 0; i<SubordinationList.size(); i++)
{
	PrintableList = PrintableList + SubordinationList.get(i).toString() + "<br>";
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Name</title>
</head>
<body>
The IDs of all subordinates are:<br>
<%=PrintableList%>
</body>
</html>