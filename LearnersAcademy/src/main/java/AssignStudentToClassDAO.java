

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ansari.AssignClassToStudent;
import ansari.ClassdBConnection;


	public class AssignStudentToClassDAO {
		
		public int insertStudentToClass(AssignClassToStudent asssignstudclass) throws ClassNotFoundException, SQLException {
			Connection con=ClassdBConnection.getConn();
			String sql="insert into studentclass values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, asssignstudclass.getStudentname());
			ps.setString(2, asssignstudclass.getClassname());
			return ps.executeUpdate();		
		}
		public int assignClassToStudent(AssignClassToStudent asssignstudclass) throws ClassNotFoundException, SQLException {
			Connection con=ClassdBConnection.getConn();
			String sql="update student set classname=? where sfirstname=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, asssignstudclass.getClassname());
			ps.setString(2, asssignstudclass.getStudentname());
			return ps.executeUpdate();		
		}
					
		}
	
	
	
