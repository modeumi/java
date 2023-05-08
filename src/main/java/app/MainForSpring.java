package app;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainForSpring {
	private static ApplicationContext ctx = null;

	public static void main(String[] args) throws IOException {
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
			} else if (command.startsWith("change ")) {
				processChangeCommand(command.split(" "));
				continue;
			} else if (command.equals("list")) {
				processListCommand();
				continue;
			} else if (command.equals("version")) {
				processVersionCommand();
				continue;
			} else if (command.startsWith("info ")) {
				processInformationCommand(command.split(" "));
				continue;
			}else if (command.startsWith("delete ")) {
				pricessDeleteCommand(command.split(" "));
				continue;
			}
				
			
			printHelp();
		}
	}

	private static void processNewCommand(String[] arg) {
		if (arg.length != 5) {
			printHelp();
			return;
		}
		MemberRegisterService regSvc = ctx.getBean("memberRegSvc", MemberRegisterService.class);
		RegisterRequest req = new RegisterRequest();
		req.setEmail(arg[1]);
		req.setName(arg[2]);
		req.setPass(arg[3]);
		req.setConfirmpass(arg[4]);
		if (!req.isPasswordEqualToConfirmPass()) {
			System.out.println("암호 화인 일치 x");
			return;
		}
		try {
			regSvc.regist(req);
			System.out.println("등록");
		} catch (DuplicateMemberException e) {
			System.out.println("이미 존재 이메일");
		}
	}

	private static void processChangeCommand(String[] arg) {
		if (arg.length != 4) {
			printHelp();
			return;
		}
		ChangePassService changePwdSvc = ctx.getBean("changePwdSvc", ChangePassService.class);
		try {
			changePwdSvc.changePass(arg[1], arg[2], arg[3]);
			System.out.println("변경");
		} catch (MemberNotFoundException e) {
			System.out.println("존재 x");
		} catch (WrongIdPassException e) {
			System.out.println("e/p 일치 x");
		}
	}
		
	private static void processListCommand() {
		MemberListService listPrinter = ctx.getBean("listPrinter", MemberListService.class);
		listPrinter.memberList();
	}

	private static void processVersionCommand() {
		VersionPrinter versionPrinter = ctx.getBean("versionPrinter", VersionPrinter.class);
		versionPrinter.print();

	}
	private static void processInformationCommand(String[] arg) {
		if (arg.length !=2) {
			printHelp();
			return;	
		}
		MemberListService userinfo = ctx.getBean("listPrinter", MemberListService.class);
		userinfo.userinfo(arg[1]);	
	}
	private static void pricessDeleteCommand(String[] arg) {
		if (arg.length != 2) {
			printHelp();
			return;
		}
		MemberDeleteService delete = ctx.getBean("deleteUser", MemberDeleteService.class);
		delete.delete(arg[1]);
		System.out.println("삭제");
		
	}

	private static void printHelp() {
		System.out.println();
		System.out.println("잘못 명령 사용 확인");
		System.out.println("명령 사용");
		System.out.println("new e n p pc");
		System.out.println("change e np cp");
		System.out.println("list");
		System.out.println("version");
		System.out.println("info e");
		System.out.println("delete e");
		System.out.println();
	}
}
