
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ClassdBConnection {
	
	public static final String DB_URL = "jdbc:mysql://localhost:3306/LearnersAcademy";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "Sara#10052010";
	public static Connection con=null;
	
	public static Connection getConn() throws ClassNotFoundException, SQLException {
		
		//register the vendor driver
			Class.forName("com.mysql.jdbc.Driver");
			
				
		//establish the connection
			 con=DriverManager.getConnection(DB_URL,USERNAME, PASSWORD);
		
		return con;
		
	}

}
