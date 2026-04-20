<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Display the session value on this page</h1>

<%
String name=(String)session.getAttribute("user");

if(name==null)
	out.print("Sorry the session has ended");
else
	out.print("Hello "+name);
%>

</body>
</html>