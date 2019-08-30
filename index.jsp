<%@ page import="java.sql.Connection"
		import="java.sql.DriverManager"
		import="java.sql.ResultSet" %>
<%@ page import="db.DBUtilities"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DB</title> 
</head>
<body>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/springjdbc", "root", "root");
		if (connection != null){
			ResultSet rs = DBUtilities.executeQuery(connection, "SELECT * FROM Employees");
			String table = DBUtilities.getEntireRSTable(rs);
			out.println("<h1> Employees </h1>" + table);
		}
	%>
</body>
</html>