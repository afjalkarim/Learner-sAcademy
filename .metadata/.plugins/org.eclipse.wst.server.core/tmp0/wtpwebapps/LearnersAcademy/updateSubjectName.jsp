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
<h1>Welcome To Update Subject Name</h1>
<%
int subjectid=Integer.parseInt(request.getParameter("subjectid"));
String subjectname=request.getParameter("subjectname");

Subjects subject1=new Subjects();
subject1.setSubjectId(subjectid);
subject1.setSubjectName(subjectname);

SubjectDAO dao=new SubjectDAO();

int row=dao.updateSubjectName(subject1);
if(row>0){
	out.println("Subject Name Updated Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Subject Name  Not Updated");
}


%>
</body>
</html>