package app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import ch18.com.model.UserInfoDao;

@Configuration
public class ControllerConfig implements WebMvcConfigurer {
	@Autowired
	private UserInfoDao userInfoDao;

	@Bean
	public LogInController loginController() {
		LogInController logInController = new LogInController();
		return logInController.setUserInfoDao(userInfoDao);
	}

	@Bean
	public UserInfoListController userInfoListController() {
		UserInfoListController userInfoListController = new UserInfoListController();
		return userInfoListController.setUserInfoDao(userInfoDao);
	}

	@Bean
	public UserInfoAddController userInfoaddController() {
		UserInfoAddController userInfoAddController = new UserInfoAddController();
		return userInfoAddController.setUserInfoDao(userInfoDao);
	}

	@Bean
	public UserInfoDeleteController userInfoDeleteController() {
		UserInfoDeleteController userInfoDeleteController = new UserInfoDeleteController();
		return userInfoDeleteController.setUserInfoDao(userInfoDao);
	}

	@Bean
	public UserInfoUpdateController userInfoUpdateController() {
		UserInfoUpdateController userInfoUpdateController = new UserInfoUpdateController();
		userInfoUpdateController.setUserInfoDao(userInfoDao);
		return userInfoUpdateController;
	}

	@Bean
	public UserInfoUpdateFormController userInfoUpdateFormController() {
		UserInfoUpdateFormController userInfoUpdateFormController = new UserInfoUpdateFormController();
		userInfoUpdateFormController.setUserInfoDao(userInfoDao);
		return userInfoUpdateFormController;
	}

	@Bean
	public LogOutController logoutController() {
		return new LogOutController();
	}
}