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
<hr>
<h5 style="Color:green">Add New Class</h5>
</div>
<form action="insertClass.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Class Id<br>
<input type="text" name="classid"></td>
</tr>
<tr>
<td>Class Name<br>
<input type="text" name="classname"></td>
</tr>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Save"></h3>
</div>
</form>
</div>
<p align=center><%@include file="ViewClassList.jsp"%></p>
</body>
</html>