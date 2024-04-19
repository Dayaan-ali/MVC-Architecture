package in.sterling.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import in.sterling.DTO.LoginDTO;
import in.sterling.connection.Connectivity;

public class LoginModel {

	private Connection con;
	private boolean flag =false;
	
	public LoginModel(Connection con) {
		this.con = con;
	}
	public boolean validate(LoginDTO dto) {

		Connection con = Connectivity.getConnectivity();
		
		try {

			PreparedStatement ps = con.prepareStatement("select Username , password from login where Username =? and password =? ");
			ps.setString(1, dto.getUname());
			ps.setString(2, dto.getPass());

			ResultSet rs = ps.executeQuery();

			flag = rs.next();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
}
