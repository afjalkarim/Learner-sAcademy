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
</div><hr>
<div  style="text-align:center;">
<h4 style="Color:green"><u>Assign Student To Class</u></h4>
</div>
<form action="insertClassToStudent.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<% StudentDAO dao=new StudentDAO();
List<Student> studentpojo=(List<Student>)dao.viewName();
%>
<% ClassDAO dao1=new ClassDAO();
List<ClassForStudent> classpojo=(List<ClassForStudent>)dao1.viewName();
%>
<tr>
<td>Select Student
<Select name="student">
<% for(Student c:studentpojo){ %>  
<option>
<%=c.getsFirstName()%>
</option>
<%} %>
</Select></td>
</tr>
<tr>
<td>Select Class
<Select name="class1">
<% for(ClassForStudent c1:classpojo){ %>  
<option>
<%=c1.getClassName()%>
</option>
<%} %>
</Select>
</td>
</tr>
</tr>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Assign"></h3>
</div>
</form>
</div>
</body>
<div style="text-align:center;">
<h3 style="Color:blue"><a href="admindashboard.jsp"><input type="submit" value="Back To Dashboard"></a></h3>
</div> 
</html>