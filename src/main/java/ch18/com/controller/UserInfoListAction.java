package ch18.com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDaoImpl;

public class UserInfoListAction implements Action {
	@Override
	public void execute (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		try {
			List <UserInfo> userinfos = new UserInfoDaoImpl().selectList();
			request.setAttribute("userinfos", userinfos);
			request.getRequestDispatcher("select02.jsp").include(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
