<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Page</title>
</head>
<body>
<%
String name=(String)session.getAttribute("name");
String password=(String)session.getAttribute("password");
String usertype=(String)session.getAttribute("usertype");
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/emp?autoReconnect=true&useSSL=false";
String user = "root";
String passwor = "root";
String sql = "select * from employee";
try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, passwor);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
while(rs.next())
	if(rs.getString(1).equals(name))
	out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getFloat(3));
con.close();
}
catch(Exception e){}
%>
<form action="Login.jsp" method="post">
<center><input type="submit" name="Logout" value="Logout"/></center>
</body>
</html>