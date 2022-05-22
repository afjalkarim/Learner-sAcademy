<%@ page import="ansari.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.*" %>

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
<h5 style="Color:green">Modify Teacher Name</h5>
</div>
<% TeachersDAO dao=new TeachersDAO();
List<Teachers> teacherpojo=(List<Teachers>)dao.view();
%>
<form action="updateTeacherName.jsp" method="post">

<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Select Teacher Id<br>
<input type="text" list="teacherid" name="teacherid">
<datalist id="teacherid">
<% for(Teachers teacher:teacherpojo){ %>  
<option>
<%=teacher.getTid()%>
</option>
<%} %>
</datalist>
</td>
</tr><br>

<tr>
<td>Select Teacher Name<br>
<input type="text" list="teachername" name="teachername">
<datalist id="teachername">
<% for(Teachers teacher1:teacherpojo){ %>  
<option>
<%=teacher1.gettFirstName()%>
</option>
<%} %>
</datalist>
</td>
</tr><br>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Modify"></h3>
</div>
</form>
<div style="text-align:center;">
<h3 style="Color:blue"><a href="admindashboard.jsp"><input type="submit" value="Back To Dashboard"></a></h3>
</div>
</body>
</html>