package web;


import java.sql.*;
//import java.text.SimpleDateFormat;
//import java.util.*;

public class DBConnect {

	private static final String url = "jdbc:mysql://localhost:3306/"; 
	private static final String dbName = "test";
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String userName = "root";
	private static final String password = "";	
	private Connection con;
	//private static final int NCOLS = 6, NSUGGESTED = 4;
	//private static final SimpleDateFormat format = new SimpleDateFormat("EEEE, MMMM d 'at' hh:mm a");
	
	public DBConnect () throws InstantiationException, IllegalAccessException {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url+dbName,userName,password);
		}catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	//}
	
		
	//public String getAdvisor(String username, String element) {
		try {
			Statement stmt = con.createStatement();
			stmt.executeQuery("USE " + dbName ); 
			ResultSet rs = stmt.executeQuery("SELECT * FROM student_info WHERE name = admin");
			//rs.first();
			System.out.print(rs.getString("advisor"));
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Was not able to get profile");
		}
		//return null;
	}
	
	

}
