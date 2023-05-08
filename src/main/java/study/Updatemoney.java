package study;

public class Updatemoney {
	BankInfo bankinfo;
	private MemberDao memberDao;
	public void updatemoney (MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public void depositmoney (String email, int balance) {
		bankinfo.deposit(balance);
		memberDao.depositmoney(email, balance);
	}
	public void withdrawmoney (String email, int balance) {
		bankinfo.withdraw(balance);
		memberDao.withdrawmoney(email, balance);
	}
}
