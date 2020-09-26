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
		String error = request.getParameter("error");
		if(error !=null){
			if(error.equals("1")){
				out.println("<h3>User Name and Password Cannot be Empty !</h3>");
			}else if(error.equals("2")){
				out.println("<h3>Invalid User Name and Password.. !</h3>");
			} else if(error.equals("3")){
				out.println("<h3>Your Session Has expired or invalid session. !</h3>");
			}
		}
	
	%>

	<h1>User Login Form</h1>
	<form action="login.jsp" method="GET">
		User Name : <input type="text" name="user_name" /> <br>
		User Password  : <input type="password" name="user_password" /> <br>
		
		<input type="submit" value="Submit" />
	</form>
</body>
</html>