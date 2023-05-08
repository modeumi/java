package bankapp;

public class C_Assembler {
	private A_Login login;
	private A_PassUpdate passup;
	private A_Transper trans;
	private A_UserAdd useradd;
	private A_UserList list;
	private A_Viewinfo view;
	private A_Printer printer;
	private A_Updatemoney update;
	private A_UserDelete delete;


	public C_Assembler() {
		login = new A_Login();
		passup = new A_PassUpdate();
		trans = new A_Transper();
		useradd = new A_UserAdd();
		list = new A_UserList();
		view = new A_Viewinfo();
		printer = new A_Printer();
		update = new A_Updatemoney();
		delete = new A_UserDelete();
	}
	
	public A_UserDelete getDelete() {
		return delete;
	}
	public A_Updatemoney getUpdate() {
		return update;
	}

	public A_Printer getPrinter() {
		return printer;
	}

	public A_Login getLogin() {
		return login;
	}

	public A_PassUpdate getPassup() {
		return passup;
	}

	public A_Transper getTrans() {
		return trans;
	}

	public A_UserAdd getUseradd() {
		return useradd;
	}

	public A_UserList getList() {
		return list;
	}

	public A_Viewinfo getView() {
		return view;
	}
	
	
	
}	
	

