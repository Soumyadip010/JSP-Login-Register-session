<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register again</title>
</head>
<body>
<%
	Connection con=null;
	PreparedStatement psmt=null;
	
	try{
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String userid_db="system";
		String password_db="tito";
		
		int userid=Integer.parseInt(request.getParameter("userid"));
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		con=DriverManager.getConnection(url, userid_db, password_db);
		
		String query="INSERT INTO USERS VALUES(?,?,?)";
		psmt=con.prepareStatement(query);
		psmt.setInt(1, userid);
		psmt.setString(2, username);
		psmt.setString(3, password);
		
		int res=psmt.executeUpdate();
		
		if(res>0){
			session.setAttribute("username", username);
			session.setAttribute("check", "true");
			response.sendRedirect("success.jsp");
		}
	}
	catch(Exception e){
		response.sendRedirect("error.jsp?user="+"register");
	}
	finally {
	    try {
	        if (psmt != null) psmt.close();
	        if (con != null) con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
%>

</body>
</html>