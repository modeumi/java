package app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDao;

@Controller
public class LogInController {
   private UserInfoDao userInfoDao;
   public LogInController setUserInfoDao(UserInfoDao userInfoDao) {
      this.userInfoDao = userInfoDao;
      return this;
   }
   @PostMapping("login")
   public String login(UserInfo userinfo) {
      try {
         if(userInfoDao.exist(userinfo.getId(),
               userinfo.getPw())!= null)
            return "redirect:select";
      }catch(Exception e) {}
      return "login"; //파일이름
   }

}