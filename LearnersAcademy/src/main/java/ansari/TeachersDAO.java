package ansari;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeachersDAO {
	
public int insertTeachers(Teachers teacher1) throws ClassNotFoundException, SQLException {
		
		Connection con=ClassdBConnection.getConn();
		
		String sql="insert into teachers values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setInt(1, teacher1.getTid());
		ps.setString(2, teacher1.gettFirstName());
		ps.setString(3, teacher1.gettLastName());
		ps.setString(4, teacher1.gettDob());
		ps.setString(5, teacher1.gettAddress());
		ps.setString(6, teacher1.gettPhone());
		ps.setString(7, teacher1.gettDesignation());
		return ps.executeUpdate();		
	}
	public List<Teachers> view() throws ClassNotFoundException, SQLException {
	List<Teachers> List=new ArrayList<Teachers>();
	Connection con=ClassdBConnection.getConn();;
	String sql="select * from teachers";
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		Teachers teacherpojo=new Teachers();
		teacherpojo.setTid(rs.getInt(1));
		teacherpojo.settFirstName(rs.getString(2));
		teacherpojo.settLastName(rs.getString(3));
		teacherpojo.settDob(rs.getString(4));
		teacherpojo.settAddress(rs.getString(5));
		teacherpojo.settPhone(rs.getString(6));
		teacherpojo.settDesignation(rs.getString(7));			
		List.add(teacherpojo);
	}
	return List;	
}
	public List<Teachers> viewName() throws ClassNotFoundException, SQLException {
		List<Teachers> List=new ArrayList<Teachers>();
		Connection con=ClassdBConnection.getConn();;
		String sql="select tfirstname from teachers";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Teachers teacherpojo=new Teachers();
			teacherpojo.settFirstName(rs.getString(1));
			List.add(teacherpojo);
		}
		return List;	
	}
	
	public int updateTeacher(Teachers teacher1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="update teachers set tfirstname=? where tid=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, teacher1.gettFirstName());
		ps.setInt(2, teacher1.getTid());
		return ps.executeUpdate();		
	}
	

	public int deleteTeacher(Teachers teacher1) throws ClassNotFoundException, SQLException {
		Connection con=ClassdBConnection.getConn();
		String sql="delete from teachers where tfirstname=? and tid=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, teacher1.gettFirstName());
		ps.setInt(2, teacher1.getTid());
		return ps.executeUpdate();		
	}

}
