<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error page</title>
<style type="text/css">
	h2 {
    color:#FFFAFA !important;
    text-align: center;
    z-index: 2;
}

</style>
</head>
<body>

	<%
	String user = request.getParameter("user");
	if(user!=null){
		if(user.equals("register")){
		%>
			<h2>User-ID already exists.</h2>
			<jsp:include page="register.jsp"></jsp:include>
		
		<%}
		else if(user.equals("login")){
		%>
		
			<h2>Password does not match. Try again</h2>
			<jsp:include page="login.jsp"></jsp:include>
		<%
		}else{
		%>	
		    <h2>No such user</h2>
		    <jsp:include page="login.jsp"></jsp:include>
		<%
		}
	
		%>
	<%}
	else{
		response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>