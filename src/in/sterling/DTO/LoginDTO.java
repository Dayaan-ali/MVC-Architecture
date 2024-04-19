package in.sterling.DTO;

public class LoginDTO {
	private String uname = null;
	private String pass = null;
	
	public LoginDTO(String uname ,String pass ) {
		this.uname = uname;
		this.pass = pass;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
	
	
}
