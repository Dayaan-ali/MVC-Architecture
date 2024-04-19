package in.sterling.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

import java.sql.DriverManager;

public class Connectivity {

	private static Connection con;

	public static Connection getConnectivity() {

		ResourceBundle rb = ResourceBundle.getBundle("in/sterling/System/app");

		String driver = rb.getString("driver");
		String url = rb.getString("url");
		String uid = rb.getString("uid");
		String pwd = rb.getString("pwd");
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, uid, pwd);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		System.out.print(con + "Dayaan");
		return con;
		
	}

}
