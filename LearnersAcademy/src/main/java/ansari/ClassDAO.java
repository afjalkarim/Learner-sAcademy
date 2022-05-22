package ansari;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClassDAO {
	
	public int insertStudentClass(ClassForStudent class1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="insert into class values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, class1.getClassid());
		ps.setString(2, class1.getClassName());
		return ps.executeUpdate();		
	}

	public List<ClassForStudent> view() throws ClassNotFoundException, SQLException {
		List<ClassForStudent> List=new ArrayList<ClassForStudent>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select * from class";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			ClassForStudent classpojo=new ClassForStudent();
			classpojo.setClassid(rs.getInt(1));
			classpojo.setClassName(rs.getString(2));		
			List.add(classpojo);
		}
		return List;	
	}
	
	public List<ClassForStudent> viewName() throws ClassNotFoundException, SQLException {
		List<ClassForStudent> List=new ArrayList<ClassForStudent>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select classname from class";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			ClassForStudent classpojo=new ClassForStudent();
			classpojo.setClassName(rs.getString(1));
			List.add(classpojo);
		}
		return List;	
	}
	
	public int updateClass(ClassForStudent class1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="update class set classname=? where classid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, class1.getClassName());
		ps.setInt(2, class1.getClassid());
		return ps.executeUpdate();		
	}
	
	public int deleteClass(ClassForStudent class1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="delete from class where classname=? and classid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, class1.getClassName());
		ps.setInt(2, class1.getClassid());
		return ps.executeUpdate();		
	}
		
		
	}

