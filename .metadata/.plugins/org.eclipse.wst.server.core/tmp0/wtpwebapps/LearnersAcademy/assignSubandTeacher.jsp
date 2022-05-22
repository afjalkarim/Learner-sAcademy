<%@ page import="ansari.*" %>
<%@ page import="java.util.*" %>

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
<h4 style="Color:green"><u>Assign Subject And Teachers To A Class</u></h4>
</div>

<form action="insertSubjectAndTeacher.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<% ClassDAO dao1=new ClassDAO();
List<ClassForStudent> classpojo=(List<ClassForStudent>)dao1.viewName();
%>

<% SubjectDAO dao3=new SubjectDAO();
List<Subjects> subpojo=(List<Subjects>)dao3.viewName();
%>

<% TeachersDAO dao2=new TeachersDAO();
List<Teachers> teacherpojo=(List<Teachers>)dao2.viewName();
%>

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

<tr>
<td>Select Subject
<Select name="subject1">
<% for(Subjects s1:subpojo){ %>  
<option>
<%=s1.getSubjectName()%>
</option>
<%} %>
</Select>
</td>
</tr>
<tr>
<td>Select Teacher
<Select name="teacher1">
<% for(Teachers t1:teacherpojo){ %>  
<option>
<%=t1.gettFirstName()%>
</option>
<%} %>
</Select>
</td>
</tr>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Assign"></h3>
</div>
</form>
</div>
<div style="text-align:center;">
<h3 style="Color:blue"><a href="admindashboard.jsp"><input type="submit" value="Back To Dashboard"></a></h3>
</div> 



</body>
</html>