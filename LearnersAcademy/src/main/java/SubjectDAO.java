

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ansari.ClassdBConnection;
import ansari.Subjects;
import ansari.Teachers;

public class SubjectDAO {
	
	public int insertSubject(Subjects sub1) throws ClassNotFoundException, SQLException {
		
		Connection con=ClassdBConnection.getConn();
		String sql="insert into subjects values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sub1.getSubjectId());
		ps.setString(2, sub1.getSubjectName());
		return ps.executeUpdate();		
	}
	public List<Subjects> view() throws ClassNotFoundException, SQLException {
		List<Subjects> List=new ArrayList<Subjects>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select * from subjects";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Subjects subjectpojo=new Subjects();
			subjectpojo.setSubjectId(rs.getInt(1));
			subjectpojo.setSubjectName(rs.getString(2));		
			List.add(subjectpojo);
		}
		return List;	
	}
	
	public List<Subjects> viewName() throws ClassNotFoundException, SQLException {
		List<Subjects> List=new ArrayList<Subjects>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select subjectname from subjects";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Subjects subjectpojo=new Subjects();
			subjectpojo.setSubjectName(rs.getString(1));
			List.add(subjectpojo);
		}
		return List;	
	}
	
	public int updateSubjectName(Subjects subject1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="update subjects set subjectname=? where subid=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, subject1.getSubjectName());
		ps.setInt(2, subject1.getSubjectId());	
		return ps.executeUpdate();		
	}
	
	public int deleteSubject(Subjects subject1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="delete from subjects where subjectname=? and subid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, subject1.getSubjectName());
		ps.setInt(2, subject1.getSubjectId());
		return ps.executeUpdate();		
	}
}
