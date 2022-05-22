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
<h1>Welcome To Delete a Teacher</h1>
<%
int teacherid=Integer.parseInt(request.getParameter("teacherid"));
String teachername=request.getParameter("teachername");

Teachers teacher1=new Teachers();
teacher1.setTid(teacherid);
teacher1.settFirstName(teachername);

TeachersDAO dao=new TeachersDAO();
int row=dao.deleteTeacher(teacher1);
if(row>0){
	out.println("Teacher deleted Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Teacher Not Deleted");
}

%>
</body>
</html>