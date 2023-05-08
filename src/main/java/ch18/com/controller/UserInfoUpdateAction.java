package ch18.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDao;
import ch18.com.model.UserInfoDaoImpl;

public class UserInfoUpdateAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		try {
			UserInfoDao userinfodao = new UserInfoDaoImpl();
			userinfodao.update(new UserInfo()
					.setId(request.getParameter("id"))
					.setPw(request.getParameter("pass"))
					.setName(request.getParameter("name")));
			response.sendRedirect("ControllerServlet?command=list");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
