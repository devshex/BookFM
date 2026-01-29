package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static Connection conn;
	public static Connection getConn() 
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "BookFM", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
		
	}
	
//	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
//	private static final String USER_NAME = "FMAdmin";
//	private static final String PASSWORD = "root";
//	public static Connection connection;
//	
//	public static Connection getConnection() throws SQLException {
//		connection=DriverManager.getConnection(URL,USER_NAME,PASSWORD);
//		return connection;
//	}

}
