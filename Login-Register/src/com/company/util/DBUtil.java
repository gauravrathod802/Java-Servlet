package com.company.util;
import java.sql.*;

public class DBUtil {
	private static final String URL="jdbc:mysql://localhost:3306/servlet";
	private static final String USERNAME="root";
	private static final String PASSWORD="12345";

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException{
//		System.out.println("Connection done");
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
}

