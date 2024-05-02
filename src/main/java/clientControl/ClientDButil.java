package clientControl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClientDButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	public static boolean validate(String userName, String password){
		
		//validate
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM client WHERE userName='"+userName+"' AND password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;			
	}
	
	public static List<Client> getClient(String userName){
		
		ArrayList<Client> client = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM client WHERE userName='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Client clnt = new Client(id, name, email, phone, username, password);
				client.add(clnt);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return client;
	}
	
	   //insert client
		public static boolean insertClient(String name, String email, String phone, String userName, String password) {
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement(); 
				String sql = "INSERT INTO client VALUES (0, '"+name+"', '"+email+"', '"+phone+"', '"+userName+"', '"+password+"')" ;
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}	
				
			}catch (Exception e) {
				e.printStackTrace();
			}
						
		return isSuccess;
	}
		
		//update Client
		public static boolean updateClient(String id, String name, String email, String phone, String username, String password) {
			
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				String sql = "UPDATE client SET name='"+name+"',email='"+email+"',phone='"+phone+"',userName='"+username+"',password='"+password+"'"
	    				+ "WHERE id='"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}	
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		public static List<Client> getClientDetails(String id) {
			
			int convertedId = Integer.parseInt(id);
			
			ArrayList<Client> client = new ArrayList<>();
			
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				String sql = "SELECT * FROM client WHERE id='"+convertedId+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int cid = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String username = rs.getString(5);
					String password = rs.getString(6);
					
					Client c = new Client(cid, name, email, phone, username, password);
					client.add(c);
					
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return client;
		}
		
		public static boolean deleteClient(String id) {
			
			int convId = Integer.parseInt(id);
			
			try {
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				String sql = "DELETE FROM client WHERE id='"+convId+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}	
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}

}
