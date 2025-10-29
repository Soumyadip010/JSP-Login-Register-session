<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login again</title>
</head>
<body>
	<%
		Connection con=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		try{
			String driver="oracle.jdbc.driver.OracleDriver";
			Class.forName(driver);
			
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String userid_db="system";
			String password_db="tito";
			
			int userid = Integer.parseInt(request.getParameter("userid"));
			String password = request.getParameter("password");
			
			con=DriverManager.getConnection(url, userid_db, password_db);
			String query="SELECT * FROM USERS WHERE USERID=?";
			
			psmt=con.prepareStatement(query);
			psmt.setInt(1, userid);
			rs=psmt.executeQuery();	
			
			if (rs.next()){
				if( password.equals(rs.getString("PASSWORD")) )
				{
					session.setAttribute("username",rs.getString("USERNAME"));
					session.setAttribute("check", "false");
					response.sendRedirect("success.jsp");
				}
				else{
					response.sendRedirect("error.jsp?user="+"login"); //password does not match
				}
			}
			else{
				response.sendRedirect("error.jsp?user="+"nouser"); //No such user
			}
			
		}
		catch(Exception e){
			response.sendRedirect("login.jsp");
		}
		finally {
		    try {
		        if (rs != null) rs.close();
		        if (psmt != null) psmt.close();
		        if (con != null) con.close();
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		}

	%>

</body>
</html>