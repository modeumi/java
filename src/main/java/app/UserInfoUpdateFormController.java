package app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import ch18.com.model.UserInfoDao;

@Controller
public class UserInfoUpdateFormController {
	private UserInfoDao userInfoDao;
	public UserInfoUpdateFormController setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
		return this;
	}
	@PostMapping("userinfoView")
	public String userinfoView(UserInfo userinfo,Model model) {
		try {
			model.addAttribute("userinfo", userInfoDao.selectOne(userinfo.getId()));
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "userinfoView";
	}
	
}
