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
<h1>Welcome To Update Student Name</h1>
<%
int studentid=Integer.parseInt(request.getParameter("studentid"));
String sfirstname=request.getParameter("studentname");

Student student1=new Student();

student1.setSid(studentid);
student1.setsFirstName(sfirstname);


StudentDAO dao=new StudentDAO();

int row=dao.updateStudentName(student1);
if(row>0){
	out.println("Student Name Updated Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Student Name  Not Updated");
}


%>
</body>
</html>