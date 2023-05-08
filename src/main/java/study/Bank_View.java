package study;

import java.io.IOException;
import java.util.Scanner;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.context.annotation.SessionScope;

import com.mysql.cj.Session;

public class Bank_View {
	private static ApplicationContext ctx = null;
	private static BankInfo bankinfo;
	private static Banklogin banklogin;
	private static MemberListService list;
	public Bank_View (Banklogin banklogin) {
		this.banklogin = banklogin;
	}

	public static void main(String[] arg) throws IOException {
		String mail;
		String name;
		String pass;
		String passch;
		int bal;
		banklogin = null;
		boolean run = true;
		boolean loginrun = false;
		ctx = new AnnotationConfigApplicationContext(AppCtx.class);
		bankinfo = null;
		Scanner scan = new Scanner(System.in);
		while (run) {
			if (banklogin == null) {
				System.out.println();
				System.out.println("1. 가입");
				System.out.println("2. 로그인");
				int Num = scan.nextInt();
				switch (Num) {
				case 1:
					System.out.println("메일 이름 비번 비번확인 ");
					mail = scan.next();
					name = scan.next();
					pass = scan.next();
					passch = scan.next();
					userAdd(mail, name, pass, passch);
					break;
				case 2:
					System.out.println("메일 비번");
					mail = scan.next();
					pass = scan.next();
					userlogin(mail, pass);
					if (banklogin == null) {
						loginrun = false;
					} else {
						loginrun = true;
						System.out.println(banklogin.getName());
					}
					break;
				default:
					System.out.println("error");
				}
				if (loginrun = true) {
					System.out.println("1. 입금");
					System.out.println("2. 출금");
					System.out.println("3. 이체");
					System.out.println("4. 정보 변경");
					System.out.println("5. 회원탈퇴");
					Num = scan.nextInt();
					switch (Num) {
					case 1:
						System.out.println("금액 입력");
						int balance = scan.nextInt();
						deposit(banklogin.getEmail(), balance);
					case 2:
						System.out.println("금액 입력");
						balance = scan.nextInt();
						withdraw(banklogin.getEmail(), balance);
					case 3:
						System.out.println("받는메일");
						mail = scan.next();
						System.out.println("금액");
						bal = scan.nextInt();
						transper(mail, bal);
					case 4:
						System.out.println("확인을 위해 아이디와 비밀번호를 입력 ");
						System.out.println("아이디");
						mail = scan.next();
						System.out.println("비밀번호");
						pass = scan.next();
						System.out.println("변경할 이름과 비밀번호 입력");
						System.out.println("이름");
						name = scan.next();
						System.out.println("비밀번호");
						passch = scan.next();
						change(mail, name, pass, passch);
					case 5:
						System.out.println("탈퇴를 위해 아이디와 비밀번호를 확인");
						System.out.println("아이디");
						mail = scan.next();
						System.out.println("비밀번호");
						pass = scan.next();
						delete(mail, pass);
					}
				}
			}
		}
	}

	public static void userAdd(String email, String name, String pass, String passch) {
		MemberRegisterService add = ctx.getBean("useradd", MemberRegisterService.class);
		AddUserch addch = new AddUserch();
		addch.setEmail(email);
		addch.setName(name);
		addch.setPass(pass);
		addch.setPassch(passch);
		if (!addch.matchpass()) {
			System.out.println("일치x");
			return;
		}
		try {
			add.regist(addch);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void change(String email, String name, String beforeP, String AfterP) {
		ChangeInfoService change = ctx.getBean("change", ChangeInfoService.class);
		change.changes(email, name, beforeP, AfterP);
	}

	public static void userlogin(String email, String pass) {
		Login_Service login = ctx.getBean("login", Login_Service.class);
		login.login_Service(email, pass);
	}

	public static void transper(String email, int bal) {
		Transper transper = ctx.getBean("trans", Transper.class);
		transper.transper(email, bal);
	}

	public static void deposit(String email, int bal) {
		Updatemoney update = ctx.getBean("update", Updatemoney.class);
		update.depositmoney(email, bal);
	}

	public static void withdraw(String email, int bal) {
		Updatemoney update = ctx.getBean("update", Updatemoney.class);
		update.withdrawmoney(email, bal);
	}

	public static void delete(String email, String pass) {
		MemberDeleteService delete = ctx.getBean("delete", MemberDeleteService.class);
		delete.delete(email, pass);
	}

	public static void userlist() {
		MemberListService list = ctx.getBean("list", MemberListService.class);
		list.memberList();
	}

	private static void help() {
		System.out.println("사용법");
		System.out.println("알아서 쓰시오.");
	}

}
