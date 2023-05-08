package study;

public class Login_Service {
	private MemberDao memberDao;
	private MemberListService list;
	
	public Login_Service(MemberDao memberDao, MemberListService list) {
		this.list = list;
		this.memberDao = memberDao;
	}
	
	public void login_Service (String mail, String pass) {
		memberDao.login(mail, pass);
		list.userinfo(mail);
		
	}
}
