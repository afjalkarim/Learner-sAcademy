<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<<div style="text-align:center;">
<h3 style="Color:blue">Learner's Academy</h3>
<h4 style="Color:brown">Welcome To Admin Dashboard</h4>
<hr>
<h5 style="Color:green">Add New Teachers</h5>
</div>
<form action="insertTeachers.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Teacher Id<br>
<input type="text" name="tid"></td>
</tr>
<tr>
<td>First Name<br>
<input type="text" name="tfirstname"></td>
</tr>
<tr>
<td>Last Name<br>
<input type="text" name="tlastname"></td>
</tr>
<tr>
<td>Date Of Birth<br>
<input type="text" name="tdob"></td>
</tr>
<tr>
<td>Address<br>
<input type="text" name="taddress"></td>
</tr>
<tr>
<td>Phone<br>
<input type="text" name="tphone"></td>
</tr>
<tr>
<td>Designation<br>
<input type="text" name="tdesignation">
</td>
</tr>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Save"></h3>
</div>
</form>
</div>
<p align=center><%@include file="ViewTeacherList.jsp"%></p>
</body>
</html>