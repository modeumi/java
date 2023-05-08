package app;

import java.beans.PropertyVetoException;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import ch18.com.model.UserInfoDao;
import ch18.com.model.UserInfoDaoImpl;


@Configuration
public class UserInfoConfig {
   @Bean(destroyMethod ="close")
   public DataSource dataSource() {
      ComboPooledDataSource dataSource = new ComboPooledDataSource();
      try {
         dataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
      }catch(PropertyVetoException e) {
         throw new RuntimeException(e);
      }
      dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/JSPBookDB");
      dataSource.setUser("root");
      dataSource.setPassword("java");
      return dataSource;
   }
   @Bean
   public UserInfoDao userInfoDao() {
      return new UserInfoDaoImpl();
   }

}