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
<h5 style="Color:green">Modify Subject Name</h5>
</div>
<% SubjectDAO dao=new SubjectDAO();
List<Subjects> subjectpojo=(List<Subjects>)dao.view();
%>
<form action="updateSubjectName.jsp" method="post">

<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Select Subject Id<br>
<input type="text" list="subjectid" name="subjectid">
<datalist id="subjectid">
<% for(Subjects sub:subjectpojo){ %>  
<option>
<%=sub.getSubjectId()%>
</option>
<%} %>
</datalist>
</td>
</tr><br>

<tr>
<td>Select Subject Name<br>
<input type="text" list="subjectname" name="subjectname">
<datalist id="subjectname">
<% for(Subjects sub1:subjectpojo){ %>  
<option>
<%=sub1.getSubjectName()%>
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