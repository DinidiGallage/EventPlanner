package clientControl;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/event_planning_system";
	private static String user = "root";
	private static String passWord = "Java@6394";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
		    con = DriverManager.getConnection(url, user, passWord);

			
		}catch (Exception e){
			System.out.println("Database connection is not successful!");
		}
		
		return con;
		
	}

}
