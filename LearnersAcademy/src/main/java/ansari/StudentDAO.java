package ansari;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	
public int insertStudent(Student stud1) throws ClassNotFoundException, SQLException {
		
		Connection con=ClassdBConnection.getConn();
		String sql="insert into student values(?,?,?,?,?,?)";
		
		
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setInt(1, stud1.getSid());
		ps.setString(2, stud1.getsFirstName());
		ps.setString(3, stud1.getsLastName());
		ps.setString(4, stud1.getsDob());
		ps.setString(5, stud1.getsAddress());
		ps.setString(6, stud1.getsPhone());
		return ps.executeUpdate();		
	}

	public List<Student> view() throws ClassNotFoundException, SQLException {
	List<Student> List=new ArrayList<Student>();
	Connection con=ClassdBConnection.getConn();;
	String sql="select * from student";
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		Student studentpojo=new Student();
		studentpojo.setSid(rs.getInt(1));
		studentpojo.setsFirstName(rs.getString(2));
		studentpojo.setsLastName(rs.getString(3));
		studentpojo.setsDob(rs.getString(4));
		studentpojo.setsAddress(rs.getString(5));
		studentpojo.setsPhone(rs.getString(6));
		studentpojo.setsClass(rs.getString(7));
		List.add(studentpojo);
	}
	return List;	
}
	public List<Student> viewName() throws ClassNotFoundException, SQLException {
		List<Student> List=new ArrayList<Student>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select sfirstname from student";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student studentpojo=new Student();
			studentpojo.setsFirstName(rs.getString(1));
			List.add(studentpojo);
		}
		return List;	
	}
	
	public int updateStudentName(Student student1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="update student set sfirstname=? where sid=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, student1.getsFirstName());
		ps.setInt(2, student1.getSid());
		return ps.executeUpdate();		
	}
	
	public int deleteStudent(Student student1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="delete from student where sfirstname=? and sid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, student1.getsFirstName());
		ps.setInt(2, student1.getSid());
		return ps.executeUpdate();		
	}
	
	public List<Student> viewReport(Student student) throws ClassNotFoundException, SQLException {
		List<Student> List=new ArrayList<Student>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select * from student where classname=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,student.getsClass());
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student studentpojo=new Student();
			studentpojo.setSid(rs.getInt(1));
			studentpojo.setsFirstName(rs.getString(2));
			studentpojo.setsLastName(rs.getString(3));
			studentpojo.setsDob(rs.getString(4));
			studentpojo.setsAddress(rs.getString(5));
			studentpojo.setsPhone(rs.getString(6));
			studentpojo.setsClass(rs.getString(7));
			List.add(studentpojo);
		}
		return List;	
	}
}
