<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<center><h2 style="color:green">Payroll Login</h2></center>
<form method="post" action="login2.jsp">
Enter Your Name :<input type="text" name="name"/>
<br></br>
Enter Your Password :<input type="password" name="password"/>
<br></br>
Select UserType:
<select name="usertype">
<option value="select">select</option>
<option value="adminstrator">adminstrator</option>
<option value="manager">manager</option>
<option value="employee">employee</option>
</select>
<br></br>
<input type="submit" value="Submit">
</form>
</body>
</html>