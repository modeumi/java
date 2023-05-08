package ch18.com.model;

public class LoginBean {
	private String id;
	private String pass;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public boolean validate() {
		if (pass.equals("admin")) {
			return true;
		} else {
			return false;
		}
	}
}
