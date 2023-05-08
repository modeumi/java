package bankapp;

import java.io.IOException;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class V_Bank {
	private static ApplicationContext ctx = null;
	private static BankInfo bankinfo;
	private static A_Printer print;
	private static C_Assembler assembler;
	private static Process process; 

	public static void main(String[] arg) throws IOException {
		boolean run = true;
		ctx = new GenericXmlApplicationContext("classpath:BankXml.xml");
		bankinfo = null;
		Scanner scan = new Scanner(System.in);
		while (run) {
		System.out.println();
		System.out.println("1. 가입");
		System.out.println("2. 로그인");
		int Num = scan.nextInt();
			switch (Num) {
			case 1:
				System.out.println("메일 이름 비번 비번확인 ");
				String mail = scan.next();
				String name = scan.next();
				String pass = scan.next();
				String passch = scan.next();
				System.out.println(mail + name + pass + passch);
				userAdd(mail, name, pass, passch);
				break;
			case 2:
				System.out.println("메일 비번");
				mail = scan.next();
				pass = scan.next();
				login(mail, pass);
				break;
			default:
				System.out.println("error");
			}
			
			if (Num == 2) {
				print.printer(bankinfo);
				System.out.println("1. 입금");
				System.out.println("2. 출금");
				System.out.println("3. 이체");
				System.out.println("4. 정보 변경");
				System.out.println("5. 회원탈퇴");
			}
		}
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
