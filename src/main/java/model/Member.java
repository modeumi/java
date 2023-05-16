package model;

public class Member {
	private String id;
	private String nickname;
	private String pw;
	private String name;
	private String phone;
	private String email;
	public String getId() {
		return id;
	}
	public Member setId(String id) {
		this.id = id;
		return this;
	}
	public String getNickname() {
		return nickname;
	}
	public Member setNickname(String nickname) {
		this.nickname = nickname;
		return this;
	}
	public String getPw() {
		return pw;
	}
	public Member setPw(String pw) {
		this.pw = pw;
		return this;
	}
	public String getName() {
		return name;
	}
	public Member setName(String name) {
		this.name = name;
		return this;
	}
	public String getPhone() {
		return phone;
	}
	public Member setPhone(String phone) {
		this.phone = phone;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public Member setEmail(String email) {
		this.email = email;
		return this;
	}
	
}
