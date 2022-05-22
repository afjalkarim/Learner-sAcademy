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
<h1>Welcome To Delete a Student</h1>
<%
int studentid=Integer.parseInt(request.getParameter("studentid"));
String studentname=request.getParameter("studentname");

Student student1=new Student();
student1.setSid(studentid);
student1.setsFirstName(studentname);

StudentDAO dao=new StudentDAO();
int row=dao.deleteStudent(student1);
if(row>0){
	out.println("Student deleted Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Student Not Deleted");
}

%>
</body>
</html>