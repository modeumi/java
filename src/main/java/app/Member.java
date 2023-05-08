package app;

import java.time.LocalDateTime;

public class Member {

	private long id;
	private String email;
	private String pass;
	private String name;
	private LocalDateTime registerDateTime;
	public Member (String email,String pass, String name, LocalDateTime regDateTime) {
		this.email = email;
		this.pass = pass;
		this.name = name;
		this.registerDateTime = regDateTime;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDateTime getRegisterDateTime() {
		return registerDateTime;
	}
	public void setRegisterDateTime(LocalDateTime registerDateTime) {
		this.registerDateTime = registerDateTime;
	}
	public void changePass (String oldpass, String newpass) {
		if (!pass.equals(oldpass))
			throw new WrongIdPassException();
		this.pass =newpass;
	}
	
}
