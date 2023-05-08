package study;

public class MemberPrinter {
	public void print(BankInfo member) {
		System.out.printf(
				"회원 정보 :\n 아이디 =%s \n 이름 =%s \n 잔고 =%d 원\n", 
				member.getEmail(),
				member.getName(),member.getBalance());
	}
}
