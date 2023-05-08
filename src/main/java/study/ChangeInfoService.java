package study;

public class ChangeInfoService {
	private MemberDao memberDao;
	public void setMemberDao (MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public void changes(String email, String name, String oldpass,String newpass) {
		BankInfo bankinfo = memberDao.selectByEmail(email);
		if (bankinfo == null) throw new MemberNotFoundException();
		bankinfo.changePass(oldpass, newpass);
		bankinfo.setName(name);
		memberDao.update(bankinfo);
	}
}
