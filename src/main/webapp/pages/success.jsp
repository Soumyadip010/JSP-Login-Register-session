<%
	String username=(String)session.getAttribute("username");
	String check=(String)session.getAttribute("check");
	if(username==null || username.isEmpty())
	{
		response.sendRedirect("login.jsp");
		return;
	}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login successful</title>
<link rel="stylesheet" href=./css/success.css>
</head>

<body>
	<%if(check.equals("true")){ %>
		<h1>👋 Welcome <%=username%> </h1>
	<%}
	else{ %>
		<h1>👋 Welcome Back! <%=username%> </h1>
	<%} %>
	<p>We’re glad to see you here. Have a great day ahead 🌱</p>
	<a href="logout.jsp">Logout</a>
</body>
</html>