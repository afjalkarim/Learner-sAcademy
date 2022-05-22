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

int classid=Integer.parseInt(request.getParameter("classid"));
String classname=request.getParameter("classname");

ClassForStudent class1=new ClassForStudent();
class1.setClassid(classid);
class1.setClassName(classname);

ClassDAO dao=new ClassDAO();

int row=dao.insertStudentClass(class1);
if(row>0){
	out.println("Class Saved Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("AddNewClass.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Class Not Saved");
}


%>
</body>
</html>