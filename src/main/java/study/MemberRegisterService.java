package study;

public class MemberRegisterService {
	private MemberDao memberDao;
	public MemberRegisterService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public void regist(AddUserch che) {
		BankInfo member = memberDao.selectByEmail(che.getEmail());
		if (member !=null) {
			throw new DuplicateMemberException("dup email " + che.getEmail());
		}
		BankInfo newMember= new BankInfo(
				che.getEmail(), che.getName(),che.getPass(),
				0);
		memberDao.insert(newMember);
	}
}
