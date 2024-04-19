package in.sterling.DTO;

import java.io.InputStream;

public class RegisterDTO {

	private String fname = null;
	private String lname = null;
	private String num = null;
	private String email = null;
	private String state = null;
	private String uname = null;
	private String pass = null;
	/*private InputStream img = null;*/
	private String gender =null;
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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

	public String  getGender() {
		return gender;
	}

	public void setgender(String gender) {
		this.gender = gender;
	}


}
