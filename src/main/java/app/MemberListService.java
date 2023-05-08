package app;

import java.util.Collection;

public class MemberListService {
	private MemberDao memberDao;
	private MemberPrinter printer;
	
	public MemberListService(MemberDao memberDao,MemberPrinter printer) {
		this.memberDao = memberDao;
		this.printer = printer;
	}
	
	public void memberList() {
		Collection<Member> members = memberDao.selectAll();
		for (Member member: members) printer.print(member);
	}
	
	public void userinfo(String email) {
		Member user = memberDao.selectByEmail(email);
		printer.print(user);
	}
	
}
