package app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import ch18.com.model.UserInfoDao;

@Controller
public class UserInfoListController {
   private UserInfoDao userInfoDao;

   public UserInfoListController setUserInfoDao(UserInfoDao userInfoDao) {
      this.userInfoDao = userInfoDao;
      return this;
   }

   @GetMapping("select")
   public String list(Model model) throws Exception {
      model.addAttribute("userinfos", userInfoDao.selectList());
      return "select"; //파일명
   }
}