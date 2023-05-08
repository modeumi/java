package bankapp;

import java.io.IOException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Process {
	private static ApplicationContext ctx = null;

	public static void main(String[] args) throws IOException {
		ctx = new GenericXmlApplicationContext("classpath:BankXml.xml");

	}

	public static void userAdd(String email, String name, String pass, String passch) {
		A_UserAdd add = ctx.getBean("useradd", A_UserAdd.class);
		addUserRe addRe = new addUserRe();
		addRe.setEmail(email);
		addRe.setName(name);
		addRe.setPass(pass);
		addRe.setPassch(passch);
		if (!addRe.matchpass()) {
			System.out.println("일치x");
			return;
		}
		try {
			add.useradd(addRe);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void login(String email, String pass) {
		A_Login login = ctx.getBean("login", A_Login.class);
		login.login(email, pass);
	}

	public static void view(String email) {
		A_Viewinfo viewinfo = ctx.getBean("view", A_Viewinfo.class);
		viewinfo.viewinfo(email);
	}

	public static void transper(String email, int bal) {
		A_Transper transper = ctx.getBean("trnas", A_Transper.class);
		transper.transfer(email, bal);
	}

	public static void deposit(String email, int bal) {
		A_Updatemoney update = ctx.getBean("update", A_Updatemoney.class);
		update.depositmoney(email, bal);
	}

	public static void withdraw(String email, int bal) {
		A_Updatemoney update = ctx.getBean("update", A_Updatemoney.class);
		update.withdrawmoney(email, bal);
	}

	public static void delete(String email) {
		A_UserDelete delete = ctx.getBean("delete", A_UserDelete.class);
		delete.userdelete(email);
	}

	public static void userlist() {
		A_UserList list = ctx.getBean("list", A_UserList.class);
		list.userlist();
	}

	private static void help() {
		System.out.println("사용법");
		System.out.println("알아서 쓰시오.");
	}
}
