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

String studentname=request.getParameter("student");
String classname=request.getParameter("class1");

AssignClassToStudent cs=new AssignClassToStudent();
cs.setStudentname(studentname);
cs.setClassname(classname);

AssignStudentToClassDAO dao=new AssignStudentToClassDAO();

int row=dao.assignClassToStudent(cs);

if(row>0){
	
	out.println("Assigned Class To Student Successfully");
	
}else{
		out.println("Class Not Saved");
}


%>
</body>
</html>