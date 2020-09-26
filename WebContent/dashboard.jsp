<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		if(session.getAttribute("user_name")== null){
				response.sendRedirect("index.jsp?error=3");
		}
	%>
	
	<h1> Hello, <%= session.getAttribute("user_name") %></h1>
 	<a href="logout.jsp" >Log Me Out</a>
	
</body>
</html>