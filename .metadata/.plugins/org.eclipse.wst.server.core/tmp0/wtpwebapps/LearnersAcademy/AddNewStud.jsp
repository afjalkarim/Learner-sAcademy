<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:center;">
<h3 style="Color:blue">Learner's Academy</h3>
<h4 style="Color:brown">Welcome To Admin Dashboard</h4>
<hr>
<h5 style="Color:green">Add New Student</h5>
</div>
<form action="insertStudent.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Student Id<br>
<input type="text" name="sid"></td>
</tr>
<tr>
<td>First Name<br>
<input type="text" name="sfirstname"></td>
</tr>
<tr>
<td>Last Name<br>
<input type="text" name="slastname"></td>
</tr>
<tr>
<td>Date Of Birth<br>
<input type="text" name="sdob"></td>
</tr>
<tr>
<td>Address<br>
<input type="text" name="saddress"></td>
</tr>
<tr>
<td>Phone<br>
<input type="text" name="sphone"></td>
</tr>
<tr>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Save"></h3>
</div>
</form>
</div>
<p align=center><%@include file="ViewStudList.jsp"%></p>
</body>
</html>