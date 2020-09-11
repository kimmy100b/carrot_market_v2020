package carrot;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;

public class DBConnectTest {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver"; //
	private static final String URL = "JDBC:MYSQL://localhost:3306/testdb?useSSL=false&serverTimezone=UTC";
	private static final String USER = "root";
	private static final String PW = "mysql";

	@Test
	public void testDBConnection() throws Exception {
		Class.forName(DRIVER); //

		try {
			Connection con = DriverManager.getConnection(URL, USER, PW);
			System.out.println(con);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
