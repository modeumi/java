package app;

public class Assembler {
	private MemberDao memberDao;
	private MemberRegisterService regSvc;
	private ChangePassService pwdSvc;
	public Assembler() {
		memberDao = new MemberDao();
		regSvc = new MemberRegisterService(memberDao);
		pwdSvc = new ChangePassService();
		pwdSvc.setMemberDao(memberDao);
	}
	public MemberDao getMemberDao() {
		return memberDao;
	}
	public MemberRegisterService getMemberResisterService() {
		return regSvc;
	}
	public ChangePassService getChangePassService() {
		return pwdSvc;
	}
}
