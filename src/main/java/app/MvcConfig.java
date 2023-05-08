package app;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {
   @Override
   public void configureDefaultServletHandling
      (DefaultServletHandlerConfigurer configurer) {
      configurer.enable();
      
   }
   @Override 
   public void configureViewResolvers(ViewResolverRegistry registry) {//뷰를 찾아서 실행
      registry.jsp().prefix("/WEB-INF/jsp/");//뷰의 위치하는 곳 ViewResolver가 찾아줌
   }

}