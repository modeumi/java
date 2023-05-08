package study;

public class Banklogin {
	private String name;
	private String pass;
	private String email;
	private int balance;
	
	public Banklogin ( String email, String name, String pass, int balance) {
		this.email = email;
		this.name = name;
		this.pass = pass;
		this.balance = balance;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
}
