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

int tid=Integer.parseInt(request.getParameter("tid"));
String tFirstName=request.getParameter("tfirstname");
String tLastName=request.getParameter("tlastname");
String tDob=request.getParameter("tdob");
String tAddress=request.getParameter("taddress");
String tPhone=request.getParameter("tphone");
String tDesignation=request.getParameter("tdesignation");

 Teachers teacher1=new Teachers();
 teacher1.setTid(tid);
 teacher1.settFirstName(tFirstName);
 teacher1.settLastName(tLastName);
 teacher1.settDob(tDob);
 teacher1.settAddress(tAddress);
 teacher1.settPhone(tPhone);
 teacher1.settDesignation(tDesignation);
 
 
 TeachersDAO dao=new TeachersDAO();
int row=dao.insertTeachers(teacher1);

if(row>0){
	out.println("Teachers Added Successfully");
	RequestDispatcher rd=request.getRequestDispatcher("AddNewTeacher.jsp");
    rd.forward(request, response);
	
}else{
		out.println("Teachers Not Added");
}

%>
</body>
</html>