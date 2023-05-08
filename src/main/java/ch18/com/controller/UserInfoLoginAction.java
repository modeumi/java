package ch18.com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDaoImpl;

public class UserInfoLoginAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)throws SecurityException, IOException{
//		String id = request.getParameter("id");
//		String pass = request.getParameter("pass");
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("UserInfoLogin.jsp");
	}
}
