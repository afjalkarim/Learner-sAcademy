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
<h1>Welcome To Delete a Class</h1>
<%
int classid=Integer.parseInt(request.getParameter("classid"));
String classname=request.getParameter("classname");

ClassForStudent class1=new ClassForStudent();
class1.setClassid(classid);
class1.setClassName(classname);

ClassDAO dao=new ClassDAO();
int row=dao.deleteClass(class1);
if(row>0){
	out.println("Class deleted Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Class Not Deleted");
}

%>
</body>
</html>