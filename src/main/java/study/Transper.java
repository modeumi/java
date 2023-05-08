package study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import com.mysql.fabric.xmlrpc.base.Data;

import bankapp.BankDao_main;

public class Transper {
	private MemberDao memberDao;
	private Banklogin login;
	public void setMemberDao (MemberDao memberDao, Banklogin login) {
		this.memberDao = memberDao;
		this.login = login;
	}
	public void transper(String email, int bal) {
		memberDao.withdrawmoney(login.getEmail(), bal);
		memberDao.transfer(email, bal);
	}
}
