package bankapp;

public class addUserRe {
private String email;
private String name;
private String pass;
private String passch;


public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
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
public String getPassch() {
	return passch;
}
public void setPassch(String passch) {
	this.passch = passch;
}
public boolean matchpass() {
	return pass.equals(passch);
}
	
}
