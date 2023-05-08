package app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDao;
@Controller
public class UserInfoAddController {
   private UserInfoDao userInfoDao;
   public UserInfoAddController setUserInfoDao(UserInfoDao userInfoDao) {
      this.userInfoDao = userInfoDao;
      return this;
   }
   @PostMapping("insert")
   public String insert(UserInfo userinfo) {
      try {
         userInfoDao.insert(userinfo);   
      }catch(Exception e) {e.printStackTrace();}
      return "redirect:select"; //파일이름
   }
   }
      
   