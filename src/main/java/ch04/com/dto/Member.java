package ch04.com.dto;

public class Member {
	private String name;
	private String id;
	private String pass;
	
	public Member(String name, String id , String pass) {
		this.name = name;
		this.id = id;
		this.pass = pass;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
}
