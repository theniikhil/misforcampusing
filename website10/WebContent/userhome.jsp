<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String userid="";
if(session.getAttribute("uid")!=null)
{
	userid=(String)session.getAttribute("uid");
}
else
{
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.forward(request,response);
}%>

<body bgcolor=cyan>
Welcome user : <br>
<p align=right><a href=logout>LogOut</a></p>
<form action="prime" method=get>
Data:<input type=text size=6>
<input type=submit name=submit value=submit></form>
</body>
</html>