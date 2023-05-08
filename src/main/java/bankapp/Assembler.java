package bankapp;

public class Assembler {
	private BankDao bankDao;
	public Assembler() {
		bankDao = new BankDao();
	}
	public BankDao getBankDao() {
		return bankDao;
	}
}
