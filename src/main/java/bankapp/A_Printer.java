package bankapp;


public class A_Printer {
	public void printer(BankInfo bankInfo){
		System.out.printf("메일 : %s , 이름 : %s , 잔고 : %d",
				bankInfo.getEmail(),bankInfo.getName(),bankInfo.getBalance());
	}
	}
