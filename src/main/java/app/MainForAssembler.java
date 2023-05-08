package app;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MainForAssembler {
	public static void main (String[] args) throws IOException{
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		while(true) {
			System.out.println("명령어 입력");
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
			}
		}
	}
		private static Assembler assembler = new Assembler();
		
		private static void processNewCommand(String[] arg) {
			if (arg.length != 5) {
				printHelp();
				return;
			}
			MemberRegisterService regSvc = assembler.getMemberResisterService();
			RegisterRequest req = new RegisterRequest();
			req.setEmail(arg[1]);
			req.setName(arg[2]);
			req.setPass(arg[3]);
			req.setConfirmpass(arg[4]);
			if (!req.isPasswordEqualToConfirmPass()) {
				System.out.println("암호 일치x \n");
				return;
			}
			try {
				regSvc.regist(req);
				System.out.println("등록 \n");
			}catch (DuplicateMemberException e) {
				System.out.println("이미 존재 \n");
			}
		}
		
		private static void processChangeCommand(String[] arg) {
			if (arg.length !=4) {
				printHelp();
				return;
			}
			ChangePassService changePwdSvc = 
					assembler.getChangePassService();
			try {
				changePwdSvc.changePass(arg[1], arg[2], arg[3]);
				System.out.println("변경");
			}catch (MemberNotFoundException e) {
				System.out.println("존재 x");
			}catch (WrongIdPassException e) {
				System.out.println("일치 x");
			}
		}	
		private static void printHelp() {
			System.out.println();
			System.out.println("명령 오류 설명 확인");
			System.out.println("설명");
			System.out.println("new 확인");
			System.out.println("change 확인");
			System.out.println();
		}

}
