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
<h5 style="Color:green">Add New Subjects</h5>
</div>
<form action="insertSubject.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Subject Id<br>
<input type="text" name="subjectid"></td>
</tr>

<tr>
<td>Subject Name<br>
<input type="text" name="subjectname"></td>
</tr>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Save"></h3>
</div>
</form>
</div>
<p align=center><%@include file="ViewSubList.jsp"%></p>
</body>
</html>