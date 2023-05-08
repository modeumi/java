package study;

import org.springframework.beans.factory.annotation.Autowired;

public class MemberRemoveService {
	@Autowired
	private MemberDao memberDao;
	public void remove(String email,String pass) {
		BankInfo member = memberDao.selectByEmail(email);
		if (member !=null ) {
			if (member.getPass().equals(pass)) memberDao.delete(email);
			else throw new WrongIdPassException();
		}else throw new MemberNotFoundException();
		
	}
}
