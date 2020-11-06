package kr.or.market.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseUtil {
	public static Connection getConnection() {
		Connection conn = null;

		try {
			String dbURL = "jdbc:mysql://localhost:3306/carrot_market?useSSL=false";
			String dbUser = "root";
			String dbPasswd = "mysql";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbUser, dbPasswd);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
}
