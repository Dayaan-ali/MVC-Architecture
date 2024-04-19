package in.sterling.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import in.sterling.DTO.RegisterDTO;
import in.sterling.connection.Connectivity;

public class RegisterModel {
	private boolean flag = true;

	public boolean validate(RegisterDTO dto) {
		Connection con = Connectivity.getConnectivity();
		System.out.println(con);
		try {

			PreparedStatement ps = con.prepareStatement("insert into login values(?,?,?,?,?,?,?,?)");
			ps.setString(1, dto.getFname());
			ps.setString(2, dto.getLname());
			ps.setString(3, dto.getNum());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getState());
			ps.setString(6, dto.getUname());
			ps.setString(7, dto.getPass());
			ps.setString(8, dto.getGender());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return flag;
	}
}
