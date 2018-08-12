<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page</title>
</head>
<body>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");
String usertype=request.getParameter("usertype");
session.setAttribute("name",name);
session.setAttribute("password",password);
session.setAttribute("usertype",usertype);
if(name.length()==0||password.length()==0||usertype.equals("select"))
		response.sendRedirect("Login.jsp");
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/emp";
String user = "root";
String passwor = "root";
String sql = "select * from "+usertype;
String a="adminstrator.jsp" ;
String b="manager.jsp" ;
String c="employee.jsp";
try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, passwor);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
while(rs.next())
	if(rs.getString(1).equals(name))
		if(rs.getString(2).equals(password))
		{
			if(usertype.equals("adminstrator"))
			response.sendRedirect(a);
			else if(usertype.equals("manager"))
			response.sendRedirect(b);
			else
			response.sendRedirect(c);
		}
response.sendRedirect("LoginFailure.jsp");
con.close();
}
catch(Exception e){}
//out.println("Welcome "+name+" "+password+" "+usertype);

%>
</body>
</html>

