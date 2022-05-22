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
<h1>Welcome To Delete a Subject</h1>
<%
int subjectid=Integer.parseInt(request.getParameter("subjectid"));
String subjectname=request.getParameter("subjectname");

Subjects subject1=new Subjects();
subject1.setSubjectId(subjectid);
subject1.setSubjectName(subjectname);

SubjectDAO dao=new SubjectDAO();
int row=dao.deleteSubject(subject1);
if(row>0){
	out.println("Subject deleted Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Subject Not Deleted");
}

%>

</body>
</html>