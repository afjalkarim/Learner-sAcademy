<%@ page import="ansari.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%



int subid=Integer.parseInt(request.getParameter("subjectid"));
String subjectname=request.getParameter("subjectname");


Subjects sub1=new Subjects();
sub1.setSubjectId(subid);
sub1.setSubjectName(subjectname);

SubjectDAO dao=new SubjectDAO();
 int row=dao.insertSubject(sub1);

if(row>0){
	out.println("Subject Added Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("AddNewSub.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Subject Not Added");
}



%>
</body>
</html>