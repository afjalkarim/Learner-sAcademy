
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
<h1 style="Color:blue">Learner's Academy</h1>
<h2> Admin Login</h2>
<div style="color: red;font-weight: bold;">
<%
        if(request.getAttribute("errormsg") != null)
        	out.print(request.getAttribute("errormsg"));
 %>
 </div><br>
<form action="AdminDashboard" method="post">
<table border="1" style="text-align:center; margin-left:auto;margin-right:auto;" > 
<tr><td><br/>&nbsp; User Name : <input type="text" name="username">&nbsp;&nbsp;<br/><br/>
&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;:&nbsp;<input type="password" name="password">&nbsp;&nbsp;<br/><br/></td></tr>
<tr><td><input type="submit" value="Login"></td></tr>
</table>
</form>
</div>

</body>
</html>