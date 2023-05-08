package app;

import org.springframework.beans.factory.annotation.Autowired;

public class MemberRemoveService {
	@Autowired
	private MemberDao memberDao;
	public void remove(String email,String pass) {
		Member member = memberDao.selectByEmail(email);
		if (member !=null ) {
			if (member.getPass().equals(pass)) memberDao.delete(email);
			else throw new WrongIdPassException();
		}else throw new MemberNotFoundException();
		
	}
}
