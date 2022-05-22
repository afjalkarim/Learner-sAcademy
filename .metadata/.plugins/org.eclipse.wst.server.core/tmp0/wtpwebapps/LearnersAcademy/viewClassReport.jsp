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
<div>
<div style="text-align:center;">
<h5 style="Color:green">Report Of Class</h5>
</div>
<form action="admindashboard.jsp" method="post">
<table align=center border=1>
<%
String classname =request.getParameter("classname");
AssignSubjectToTeacher subandteacher=new AssignSubjectToTeacher();
subandteacher.setClassname(classname);
AssignSubjectAndTeacherDAO dao=new AssignSubjectAndTeacherDAO();
List<AssignSubjectToTeacher> subjectteacherpojo=(List<AssignSubjectToTeacher>)dao.view(subandteacher);
%>
<tr>
<th>Class Name</th>
<th>Subject Name</th>
<th>Teacher Name</th>
</tr>
<% for(AssignSubjectToTeacher c:subjectteacherpojo){ %>
<tr>
<td align=center><%=c.getClassname() %></td>
<td align=center><%=c.getSubjectname() %></td>
<td align=center><%=c.getTeachername() %></td>
</tr>
<%} %>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Back To Dashboard"></h3>
</div>
</form><br>

<div style="text-align:center;">
<h5 style="Color:green">Report Of Student</h5>
</div>
<form action="admindashboard.jsp" method="post">
<table align=center border=1>
<%
String classname1 =request.getParameter("classname");
Student student=new Student();
student.setsClass(classname1);

StudentDAO dao1=new StudentDAO();
List<Student> studentpojo=(List<Student>)dao1.viewReport(student);
%>
<tr>
<th>Student Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Date Of Birth</th>
<th>Address</th>
<th>Phone</th>
<th>Class Name</th>
<th colspan=9>Action</th>

</tr>
<% for(Student c:studentpojo){ %>
<tr>
<td align=center><%=c.getSid()%></td>
<td align=center><%=c.getsFirstName()%></td>
<td align=center><%=c.getsLastName()%></td>
<td align=center><%=c.getsDob()%></td>
<td align=center><%=c.getsAddress()%></td>
<td align=center><%=c.getsPhone()%></td>
<td align=center><%=c.getsClass()%></td>
<td align=center><a href="edit.jsp">Edit</a></td>
<td align=center><a href="delete.jsp">Delete</a></td>
</tr>
<%} %>
</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Back To Dashboard"></h3>
</div>
</form>
</body>
</html>