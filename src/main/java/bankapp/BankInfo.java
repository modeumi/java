package bankapp;

import app.WrongIdPassException;

public class BankInfo {
	String name;
	String pass;
	String email;
	int balance;
	
	public BankInfo (String email, String name, String pass,  int balance) {
		this.name = name;
		this.pass = pass;
		this.email = email;
		this.balance = balance;
	}
	
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
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
	public void changePass (String before, String after) {
		if (!pass.equals(before))
			throw new WrongIdPassException();
		this.pass = after;
	}
	public void deposit (int insert) {
		this.balance = balance+insert;
	}
	public void withdraw(int out) {
		this.balance = balance-out;
	}
}
