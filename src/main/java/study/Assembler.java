package study;

public class Assembler {
	private MemberDao memberDao;
	private MemberRegisterService useradd;
	private ChangeInfoService pwdSvc;
	public Assembler() {
		memberDao = new MemberDao();
		useradd = new MemberRegisterService(memberDao);
		pwdSvc = new ChangeInfoService();
		pwdSvc.setMemberDao(memberDao);
	}
	public MemberDao getMemberDao() {
		return memberDao;
	}
	public MemberRegisterService getMemberResisterService() {
		return useradd;
	}
	public ChangeInfoService getChangePassService() {
		return pwdSvc;
	}
}
