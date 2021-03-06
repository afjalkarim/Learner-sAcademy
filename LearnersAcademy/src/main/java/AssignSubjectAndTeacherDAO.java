

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ansari.AssignSubjectToTeacher;
import ansari.ClassForStudent;
import ansari.ClassdBConnection;

public class AssignSubjectAndTeacherDAO {
	
	public int insertSubjectAndTeacher(AssignSubjectToTeacher asssignsubjectteacher) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="insert into classsubjectteacher values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,asssignsubjectteacher.getClassname());
		ps.setString(2, asssignsubjectteacher.getSubjectname());
		ps.setString(3, asssignsubjectteacher.getTeachername());
		return ps.executeUpdate();		
	}
	
	public List<AssignSubjectToTeacher> view(AssignSubjectToTeacher asssignsubjectteacher) throws ClassNotFoundException, SQLException {
		List<AssignSubjectToTeacher> List=new ArrayList<AssignSubjectToTeacher>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select * from classsubjectteacher where classname=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,asssignsubjectteacher.getClassname());
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			AssignSubjectToTeacher subjectteacherpojo=new AssignSubjectToTeacher();
			subjectteacherpojo.setClassname(rs.getString(1));
			subjectteacherpojo.setSubjectname(rs.getString(2));
			subjectteacherpojo.setTeachername(rs.getString(3));
			List.add(subjectteacherpojo);
		}
		return List;	
	}


}
