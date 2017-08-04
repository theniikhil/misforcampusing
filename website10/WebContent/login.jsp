<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>LogIn</title>
</head>
<body bgcolor="Black">
<form method="get" action="loginServlet">
	<table align="center" border="1" bgcolor="cyan">
		<tr><td bgcolor="pink">User ID</td>
		<td><input type="text" size="10" name="uid"></td></tr>
		<tr><td bgcolor="pink">Password</td>
		<td><input type="password" size="10" name="pwd"></td></tr>
		<tr><td colspan="1" align="center"><input type="submit" name="login" value="Sign In">
		</td>
		<td colspan="1" align="center"><input type="submit" name="register" value="Register"></td></tr>
		<tr><td colspan="2" align="center"><a href="reg.htm">New User?</a></td></tr>
	</table>
	<%
	if(request.getAttribute("msg")!=null)
	{String msg=(String)request.getAttribute("msg");
	out.print("<p align=center>"+msg+"</p>");
	}%>
	
</form>
</body>
</html>