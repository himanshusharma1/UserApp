<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
</head>
<body>
<center>
<br><br><br><br><br><br>
<div style="color: teal;font-size: 30px">|| Login Form ||</div>
<br><br>
<div>${message}</div>
<form name="loginForm" method="post" action="login.html">
<table width="400px" height="150px">
<tr>
<td>User Name</td>
<td><input type="text" name="userName"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>
<tr><td></td><td>
<input type="submit" value="Login" />
</td></tr>
</table>
</form>
<br>
</center>
</body>
</html>