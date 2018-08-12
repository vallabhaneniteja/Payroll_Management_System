<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");
String usertype=request.getParameter("usertype");
String salary=request.getParameter("salary");
if(name.length()==0||password.length()==0||usertype.equals("select"))
		response.sendRedirect("adminstrator.jsp");
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/emp?autoReconnect=true&useSSL=false";
String user = "root";
String passwor = "root";
String sql = "insert into "+usertype+" values(\""+name+"\",\""+password+"\","+salary+")";
try {
out.println(sql);
Class.forName(driverName);
con = DriverManager.getConnection(url, user, passwor);
ps = con.prepareStatement(sql);
ps.executeUpdate(); 
out.println("Insertion Successful ");
con.close();
}
catch(Exception e){}
%>
<form action="adminstrator.jsp" >
<input type="submit" name="Go Back" value="Go Back" >
</body>
</html>