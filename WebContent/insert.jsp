<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Page</title>
</head>
<body>
<form method="post" action="executeInsert.jsp">
Enter The Name :<input type="text" name="name"/>
<br></br>
Enter The Password :<input type="password" name="password"/>
<br></br>
Enter The Salary :<input type="text" name="salary"/>
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