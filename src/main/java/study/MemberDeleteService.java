package study;


public class MemberDeleteService {
	private MemberDao memberDao;
	public MemberDeleteService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public void delete (String email, String pass) {
			memberDao.delete(email,pass);
	}
}
