package app.study;

public class Greeter {
	private String format;
	public void setFormat(String format) {
		this.format = format;
	}
	public String grret(String guest) {
		return String.format(format, guest);
	}
}
