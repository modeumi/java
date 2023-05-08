package study;

import java.util.Collection;

public class MemberListService {
	private MemberDao memberDao;
	private MemberPrinter printer;
	public MemberListService(MemberDao memberDao,MemberPrinter printer) {
		this.memberDao = memberDao;
		this.printer = printer;
	}
	
	public void memberList() {
		Collection<BankInfo> members = memberDao.selectAll();
		for (BankInfo member: members) printer.print(member);
	}
	
	public void userinfo(String email) {
		System.out.println(email + " 2323");
		BankInfo user = memberDao.selectByEmail(email);
		printer.print(user);
	}
	
}
