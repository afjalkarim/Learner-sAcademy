<%@ page import="ansari.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- <div style="text-align:center;">
<h3 style="Color:blue">Learner's Academy</h3>
<h4 style="Color:brown">Welcome To Admin Dashboard</h4>
</div>
<h1>View List Of Subjects</h1>

<p align=center><%@include file="admindashboard.jsp"%></p>
 -->
<div style="text-align:center;">
<h5 style="Color:green">List Of Subjects</h5>
</div>
<form action="admindashboard.jsp" method="post">
<table align=center border=1>
<% SubjectDAO dao=new SubjectDAO();
List<Subjects> subjectpojo=(List<Subjects>)dao.view();
%>
<tr>
<th>Subject Id</th>
<th>Subject Name</th>
<th colspan=4>Action</th>
</tr>
<% for(Subjects c:subjectpojo){ %>
<tr>
<td align=center><%=c.getSubjectId() %></td>
<td align=center><%=c.getSubjectName()%></td>
<td align=center><a href="edit.jsp">Edit</a></td>
<td align=center><a href="delete.jsp">Delete</a></td>
</tr>
<%} %>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Back To Dashboard"></h3>
</div> 
</body>
</html>