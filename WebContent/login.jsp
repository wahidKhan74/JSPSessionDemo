<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<%
		String userName = request.getParameter("user_name");
		String password = request.getParameter("user_password");
		
		if(userName==null || userName.equals("") || password==null || password.equals("")){
			response.sendRedirect("index.jsp?error=1");
		} else{
			if(userName.equals("admin@gmail.com") && password.equals("admin123!")){
				session.setAttribute("user_name", userName);
				response.sendRedirect("dashboard.jsp");
			} else{
				response.sendRedirect("index.jsp?error=2");
			}		
			
		}
	
	%>
</body>
</html>