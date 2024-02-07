package Atiia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	private final static String url = "jdbc:mysql://localhost:3307/atiia";
	private final static String un = "root";
	private final static String pasw = "free1234554321/0";

	static Connection connectToDb() throws ClassNotFoundException, SQLException

	{

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conc = DriverManager.getConnection(url, un, pasw);
		return conc;
	}
}
