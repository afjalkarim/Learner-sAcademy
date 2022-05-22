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
<!--  <div style="text-align:center;">
<h3 style="Color:blue">Learner's Academy</h3>
<h4 style="Color:brown">Welcome To Admin Dashboard</h4>
</div>
<h1>View List Of Teachers</h1>

<p align=center><%@include file="admindashboard.jsp"%></p>
-->
<div style="text-align:center;">
<h5 style="Color:green">List Of Teachers</h5>
</div>
<form action="admindashboard.jsp" method="post">
<table align=center border=1>
<% TeachersDAO dao=new TeachersDAO();
List<Teachers> teacherpojo=(List<Teachers>)dao.view();
%>
<tr>
<th>Teacher Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Date Of Birth</th>
<th>Address</th>
<th>Phone</th>
<th>Designation</th>
<th colspan=9>Action</th>

</tr>
<% for(Teachers c:teacherpojo){ %>
<tr>
<td align=center><%=c.getTid()%></td>
<td align=center><%=c.gettFirstName()%></td>
<td align=center><%=c.gettLastName()%></td>
<td align=center><%=c.gettDob()%></td>
<td align=center><%=c.gettAddress()%></td>
<td align=center><%=c.gettPhone()%></td>
<td align=center><%=c.gettDesignation()%></td>
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