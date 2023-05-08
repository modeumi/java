package app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import ch18.com.model.UserInfoDao;
import ch18.com.model.UserInfo;

@Controller
public class UserInfoUpdateController {
	private UserInfoDao userInfoDao;
	public UserInfoUpdateController setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
		return this;
	}
	@PostMapping("update")
	public String update(UserInfo userinfo) {
		try {
			userInfoDao.update(userinfo);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:select";
	}
}
