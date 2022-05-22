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

String classname=request.getParameter("class1");
String subjectname=request.getParameter("subject1");
String teachername=request.getParameter("teacher1");

AssignSubjectToTeacher st=new AssignSubjectToTeacher();
st.setClassname(classname);
st.setSubjectname(subjectname);
st.setTeachername(teachername);

AssignSubjectAndTeacherDAO dao=new AssignSubjectAndTeacherDAO();

int row=dao.insertSubjectAndTeacher(st);

if(row>0){
	
	out.println("Assigned Subject  and Teacher To Class Successfully");
	
}else{
		out.println("Not Assigned Subject and Teacher");
}


%>


</body>
</html>