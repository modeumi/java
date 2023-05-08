package ch18.com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDao;
import ch18.com.model.UserInfoDaoImpl;


public class UserInfoUpdateFormAction implements Action {
	@Override
	public void execute (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		try {
			UserInfoDao userinfodao = new UserInfoDaoImpl();
			UserInfo userinfo = userinfodao.selectOne(request.getParameter("id"));
			request.setAttribute("userinfo", userinfo);
			RequestDispatcher rd = request.getRequestDispatcher("UserInfoUpdateForm.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
