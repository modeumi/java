package bankapp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import app.ChangePassService;
import app.DuplicateMemberException;
import app.MemberListService;
import app.MemberNotFoundException;
import app.MemberRegisterService;
import app.RegisterRequest;
import app.WrongIdPassException;

public class MainBank {
	private static ApplicationContext ctx = null;
	public static void mail(String[] args) throws IOException{
		ctx = new GenericXmlApplicationContext("classpath:appCtx.xml");
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		while (true) {
			System.out.println("명령어 입력 ");
			String command = reader.readLine();
			if (command.equalsIgnoreCase("exit")) {
				System.out.println("종료");
				break;
			}
			if (command.startsWith("new ")) {
				processNewCommand(command.split(" "));
				continue;
			}else if (command.startsWith("change ")) {
				processChangeCommand(command.split(" "));
				continue;
			}else if (command.equals("list")) {
				// 구현
				continue;
			}else if (command.equals("version")) {
				// 구현
				continue;
			}
			printHelp();
		}
	}
	
	private static void processListCommand (String [] arg) {
		if (arg.length !=3) {
			printHelp();
			return;
		}
//		MemberListService liSvc = ctx.getBean(" ");
	}
	
	private static void processNewCommand(String[] arg) {
		if (arg.length !=5) {
			printHelp();
			return;
		}
		MemberRegisterService regSvc = 
				ctx.getBean("memberRegSvc", MemberRegisterService.class);
		RegisterRequest req = new RegisterRequest();
		req.setEmail(arg[1]);
		req.setName(arg[2]);
		req.setPass(arg[3]);
		req.setConfirmpass(arg[4]);
		if(!req.isPasswordEqualToConfirmPass()) {
			System.out.println("암호 화인 일치 x");
			return;
		}
		try {
			regSvc.regist(req);
			System.out.println("등록");
		}catch (DuplicateMemberException e) {
			System.out.println("이미 존재 이메일");
		}
	}
	private static void processChangeCommand (String[] arg) {
		if (arg.length != 4) {
			printHelp();
			return;
		}
		ChangePassService changePwdSvc = ctx.getBean("changePwdSvc", ChangePassService.class);
		try {
			changePwdSvc.changePass(arg[1],arg[2],arg[3]);
			System.out.println("변경");
		}catch (MemberNotFoundException e) {
			System.out.println("존재 x");
		}catch (WrongIdPassException e) {
			System.out.println("e/p 일치 x");
		}
	}
	private static void printHelp() {
		System.out.println();
		System.out.println("잘못 명령 사용 확인");
		System.out.println("명령 사용");
		System.out.println("new e n p pc");
		System.out.println("change e np cp");
		System.out.println();
	}
}


