<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<center>
<br><br><br><br><br><br>
<div style="color: teal;font-size: 30px">|| Registration Form ||</div>
<br><br>
<div id="message"></div>

<form:form id="registerForm" modelAttribute="user" method="post">
<table width="400px" height="150px">
<tr>
<td><form:label path="firstName">First Name</form:label></td>
<td><form:input  path="firstName"/></td>
</tr>
<tr>
<td><form:label path="lastName">Last Name</form:label></td>
<td><form:input  path="lastName"/></td>
</tr>
<tr>
<td><form:label path="gender">Gender</form:label></td>
<td><form:radiobuttons path="gender" items="${model.gender}"/></td>
</tr>
<tr>
<td><form:label path="city">City</form:label></td>
<td><form:select path="city" items="${model.city}"></form:select></td>
</tr>
<tr><td></td><td>
<input type="submit" onclick="save(); return false;" value="Register" />
</td></tr>
</table>
</form:form>
<br>
</center>
