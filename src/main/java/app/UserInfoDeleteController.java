package app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDao;

@Controller 
public class UserInfoDeleteController {
   private UserInfoDao userInfoDao;
   public UserInfoDeleteController setUserInfoDao(UserInfoDao userInfoDao) {
      this.userInfoDao = userInfoDao;
      return this;
   }
   @PostMapping("delete")
   public String delete(UserInfo userinfo) {
      try {
         userInfoDao.delete(userinfo.getId());   
      }catch(Exception e){e.printStackTrace();}
      return "redirect:select";
   }
   
}



/*@PostMapping("login")
public String login(UserInfo userinfo) {
   try {
      if(userInfoDao.exist(userinfo.getId(),
            userinfo.getPw())!= null)
         return "redirect:select";
   }catch(Exception e) {}
   return "login"; //파일이름
}*/






/*@PostMapping("delete")
public String delete(UserInfo userinfo) {
    try {
        // 삭제 처리를 위한 DAO 메서드 호출
        userInfoDao.delete(userinfo);
    } catch (Exception e) {
        // 예외 발생 시 로그 출력
        logger.error("Error occurred while deleting user info: {}", e.getMessage());
        // 적절한 에러 페이지로 리다이렉트
        return "redirect:/error";
    }
    // 삭제 처리가 완료되면 목록 조회 페이지로 리다이렉트
    return "redirect:/select02";
}*/