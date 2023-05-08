package ch18.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.UserInfoDao;
import ch18.com.model.UserInfoDaoImpl;

public class UserInfoDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		try {
			UserInfoDao userinfodao = new UserInfoDaoImpl();
			userinfodao.delete(request.getParameter("id"));
			response.sendRedirect("ControllerServlet?command=list");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
