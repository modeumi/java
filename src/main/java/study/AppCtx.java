package study;

import java.beans.PropertyVetoException;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mchange.v2.c3p0.ComboPooledDataSource;


@Configuration
public class AppCtx{
	@Bean
	public MemberDao memberDao() {
		return new MemberDao(dataSource());
	}
	@Bean
	public MemberRegisterService useradd() {//v
		return new MemberRegisterService(memberDao());
	}
	@Bean
	public ChangeInfoService change() {
		ChangeInfoService pwdSvc = new ChangeInfoService();
		pwdSvc.setMemberDao(memberDao());
		return pwdSvc;
	}
	@Bean
	public MemberPrinter memberPrinter() {
		return new MemberPrinter();
	}
	@Bean
	public Transper trans() { //v
		return new Transper();
	}
	@Bean
	public Login_Service login() {//v
		return new Login_Service(memberDao(),listPrinter());
	}
	@Bean 
	public MemberListService listPrinter() {
		return new MemberListService(memberDao(), memberPrinter());
	}
	@Bean
	public VersionPrinter versionPrinter() {
		VersionPrinter versionPrinter = new VersionPrinter();
		versionPrinter.setMajorVersion(5);
		versionPrinter.setMinorVersion(0);
		return versionPrinter;
	}
	@Bean
	public MemberRemoveService removeSvc () {
		return new MemberRemoveService();
	}
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		try { 
			dataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
		}catch (PropertyVetoException e) {
			throw new RuntimeException(e);
		}
		dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/JSPBookDB?autoReconnect=true&verifyServerCertificate=false&useSSL=true&useUnicode=true&characterEncoding=utf8");
		dataSource.setUser("root");
		dataSource.setPassword("java");
		return dataSource;
	}
}