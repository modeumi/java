package app;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.format.Printer;

public class MainForSpringAC {		
	private static ApplicationContext ctx = null;

	public static void main(String[] atgs) throws IOException {
		ctx = new AnnotationConfigApplicationContext(AppCtx.class);
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		while (true) {
			System.out.println("명령 입력 ");
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
			} else if (command.startsWith("remove ")) {
				processRemoveCommand(command.split(" "));
				continue;
			}else if (command.startsWith("info ")) {
				userinfoCommand(command.split(" "));
				continue;
			}
			printHelp();
		}
	}
	private static void processNewCommand(String [] arg) { // v
		if (arg.length != 5) {printHelp(); return;}
		MemberRegisterService regSvc = ctx.getBean("memberRegSvc",MemberRegisterService.class);
		RegisterRequest req =new RegisterRequest();
		req.setEmail(arg[1]);
		req.setName(arg[2]);
		req.setPass(arg[3]);
		req.setConfirmpass(arg[4]);
		if(!req.isPasswordEqualToConfirmPass()) {
			System.out.println("일치 x");
			return;
		}
		try {
			regSvc.regist(req);
			System.out.println("등록");
		} catch (DuplicateMemberException e) {
			System.out.println("이미 존재");
		}
	}
	private static void processRemoveCommand(String [] arg) { //v
		if (arg.length != 3) { printHelp(); return;}
		MemberRemoveService removeSvc = ctx.getBean("removeSvc",MemberRemoveService.class);
		removeSvc.remove(arg[1], arg[2]);
		System.out.println("삭제 완료");
	}
	private static void processListCommand() { // v 
		MemberListService listPrinter = ctx.getBean("listPrinter",MemberListService.class);
		listPrinter.memberList();
	}
	private static void userinfoCommand(String[] arg) { // v  
		if (arg.length != 2) {printHelp(); return; }
		MemberListService userPrinter = ctx.getBean("userPrinter",MemberListService.class);
		userPrinter.userinfo(arg[1]);
	}
	private static void processVersionCommand() { //v
		VersionPrinter versionPrinter = ctx.getBean("versionPrinter", VersionPrinter.class);
		versionPrinter.print();
	}
	private static void processChangeCommand(String [] arg) { //v 
		if(arg.length !=5) {printHelp(); return;}
		// change email name before after
		ChangePassService changePwdSvc = ctx.getBean("changePwdSvc",ChangePassService.class);
		try {
			changePwdSvc.changePass(arg[1], arg[2], arg[3],arg[4]);
			System.out.println("변경");
		} catch (MemberNotFoundException e) {
			System.out.println("존재 x");
			// TODO: handle exception
		}catch (WrongIdPassException e) {
			System.out.println("일치 x");
			// TODO: handle exception
		}
	}
	private static void printHelp() {
		System.out.println();
		System.out.println("장못 명령 명력 확인");
		System.out.println("사용");
		System.out.println("new E N P PC");
		System.out.println("chaage E NP CP");
		System.out.println();
	}
	
	
}
