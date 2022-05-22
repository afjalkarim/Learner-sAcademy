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
<h5 style="Color:green">Delete A Class</h5>
</div>
<% ClassDAO dao1=new ClassDAO();
List<ClassForStudent> classpojo=(List<ClassForStudent>)dao1.view();
%>
<form action="deleteclassrecords.jsp" method="post">
<table   style="text-align:center;  margin-left:auto;margin-right:auto;">
<tr>
<td>Select Class Id<br>
<input type="text" list="classid" name="classid">
<datalist id="classid">
<% for(ClassForStudent clss:classpojo){ %>  
<option>
<%=clss.getClassid() %>
</option>
<%} %>
</datalist>
</td>
</tr><br>
<tr>
<td>Select Class Name<br>
<input type="text" list="classname" name="classname">
<datalist id="classname">
<% for(ClassForStudent clss:classpojo){ %>  
<option>
<%=clss.getClassName()%>
</option>
<%} %>
</datalist>
</td>
</tr>


</table>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Delete"></h3>
</div>
</form>
</div>
<div style="text-align:center;">
<h3 style="Color:blue"><a href="admindashboard.jsp"><input type="submit" value="Back To Dashboard"></a></h3>
</div>

</body>
</html>