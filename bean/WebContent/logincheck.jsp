<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String user="root";
String pass="root";

String Driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/test";

try {
	Class.forName(Driver);

	String sql = "select * from user where name='"+username+"' and pass='"+userpass+"'";
	Connection conn = DriverManager.getConnection(url, user,
			user);

	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	if (rs.next()) {
		
		
		String users=rs.getString("name");
		session.setAttribute("users", users);
		System.out.println("found");
		
		%>
		<script type="text/javascript">
	window.open("index.jsp");

		</script>
		
		
		<%
		
		
		response.sendRedirect("index.jsp");
				
	 
	}else{
		System.out.println("not found");
		
		%>
				<script type="text/javascript">
	window.open("login.jsp");

		</script>
		
		
		<% 		
		
		response.sendRedirect("index.jsp");
			
	}
	
	
} catch (Exception e) {
	
	
	
}







%>


</body>
</html>