<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:center;">
<h3 style="Color:blue">Learner's Academy</h3>
<h4 style="Color:brown">Welcome To Admin Dashboard</h4>
</div>
<div>
<form action="index.jsp" method="post">
<table  border="2" style="text-align:center;  margin-left:auto;margin-right:auto;" >
<tr>
<th style="background:Black;color:white">S.No</th>
<th style="background:Black;color:white">Task</th>
<th style="background:Black;color:white" colspan=6>Action</th>
</tr>
<tr>
<th style="background:Black;color:white">1</th>
<th style="background:Black;color:white">Class</th>
<td><a href="ViewClassList.jsp">View List</a></td>
<td><a href="AddNewClass.jsp">Add New</a></td>
<td align=center><a href="editclass.jsp">Edit</a></td>
<td align=center><a href="deleteclass.jsp">Delete</a></td>
<td align=center><a href="assignSubandTeacher.jsp">Teachers & Subject</a></td>
<td align=center><a href="classReport.jsp">Report</a></td>

</tr>
<tr>
<th style="background:Black;color:white">2</th>
<th style="background:Black;color:white">Student</th>
<td><a href="ViewStudList.jsp">View List</a></td>
<td><a href="AddNewStud.jsp">Add New</a></td>
<td><a href="EditStud.jsp">Edit</a></td>
<td><a href="DeleteStud.jsp">Delete</a></td>
<td><a href="AssignStudToClass.jsp">Assign Class</a></td>
<td align=center><a href="#"></a></td>
</tr>
<tr>
<th style="background:Black;color:white">3</th>
<th style="background:Black;color:white">Subjects</th>
<td><a href="ViewSubList.jsp">View List</a></td>
<td><a href="AddNewSub.jsp">Add New</a></td>
<td><a href="EditSub.jsp">Edit</a></td>
<td><a href="DeleteSub.jsp">Delete</a></td>
<td><a href="#"></a></td>
<td align=center><a href=#"></a></td>
</tr>
<tr>
<th style="background:Black;color:white">4</th>
<th style="background:Black;color:white">Teachers</th>
<td><a href="ViewTeacherList.jsp">View List</a></td>
<td><a href="AddNewTeacher.jsp">Add New</a></td>
<td><a href="EditTeacher.jsp">Edit</a></td>
<td><a href="DeleteTeacher.jsp">Delete</a></td>
<td><a href="#"></a></td>
<td align=center><a href="#"></a></td>
</tr>
</table>

</div>
<div style="text-align:center;">
<h3 style="Color:blue"><input type="submit" value="Logout"></h3>
</div>
</form>

</body>
</html>