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

<div style="text-align:center;">
<h3 style="Color:blue">Learner's Academy</h3>
</div><hr>
<div style="text-align:center;">
<h5 style="Color:green">List Of Classes</h5>
</div>
<form action="admindashboard.jsp" method="post">
<table align=center border=1>
<% ClassDAO dao=new ClassDAO();
List<ClassForStudent> classpojo=(List<ClassForStudent>)dao.view();
%>
<tr>
<th>Class Id</th>
<th>Class Name</th>
</tr>
<% for(ClassForStudent c:classpojo){ %>
<tr>
<td align=center><%=c.getClassid() %></td>
<td align=center><%=c.getClassName() %></td>
</tr>
<%} %>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Back To Dashboard"></h3>
</div>
</form>
</body>
</html>

