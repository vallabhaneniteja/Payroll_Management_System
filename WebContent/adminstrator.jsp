<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adminstrator Page</title>
</head>
<body>
<div>Login Success</div>
<center>Welcome Administrator</center>
<div>Select operation to perform</div>
<form action="update.jsp" method="post">
<input type="submit" name="update" value="update"/>
</form>
<form action="view.jsp" method="post">
<input type="submit" name="view" value="view"/>
</form>
<form action="insert.jsp" method="post">
<input type="submit" name="insert" value="insert"/>
</form>
<form action="Login.jsp" method="post">
<center><input type="submit" name="Logout" value="Logout"/></center>
</form>
</body>
</html>