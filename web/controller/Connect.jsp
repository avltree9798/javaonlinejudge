<%@ page import="java.sql.*" %>

<%
	//Class yang dipakai untuk mysql
	Class.forName("com.mysql.jdbc.Driver");
	
	/* jdbc:mysql://localhost:3306/nama_database, user_name, password  */
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejudge", "root", "");
	
	Statement st = conn.createStatement();
%>