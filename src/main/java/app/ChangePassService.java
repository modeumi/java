package app;

public class ChangePassService {
	private MemberDao memberDao;
	public void setMemberDao (MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public void changePass(String email, String name, String oldpass,String newpass) {
		Member member = memberDao.selectByEmail(email);
		if (member == null) throw new MemberNotFoundException();
		member.changePass(oldpass, newpass);
		member.setName(name);
		memberDao.update(member);
	}
}
