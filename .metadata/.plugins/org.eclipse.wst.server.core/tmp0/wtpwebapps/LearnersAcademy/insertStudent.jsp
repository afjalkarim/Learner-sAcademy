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

int sid=Integer.parseInt(request.getParameter("sid"));
String sFirstName=request.getParameter("sfirstname");
String sLastName=request.getParameter("slastname");
String sDob=request.getParameter("sdob");
String sAddress=request.getParameter("saddress");
String sPhone=request.getParameter("sphone");


 Student stud1=new Student();
 stud1.setSid(sid);
 stud1.setsFirstName(sFirstName);
 stud1.setsLastName(sLastName);
 stud1.setsDob(sDob);
 stud1.setsAddress(sAddress);
 stud1.setsPhone(sPhone);

 StudentDAO dao=new StudentDAO();
 int row=dao.insertStudent(stud1);

if(row>0){
	out.println("Student Added Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("AddNewStud.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Student Not Added");
}


%>
</body>
</html>