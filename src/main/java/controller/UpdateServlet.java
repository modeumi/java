package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoImpl;
import model.Member;

/**
 * Servlet implementation class Update
 */
@WebServlet(name = "UpdateSetvlet", urlPatterns = { "/UpdateSetvlet" })
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
  			DaoImpl userinfoDao = new DaoImpl();
  			userinfoDao.update(new Member()
  			.setPw(request.getParameter("pw"))
  			.setName(request.getParameter("name"))
  			.setEmail(request.getParameter("email"))
  			.setPhone(request.getParameter("phone"))
  			.setId(request.getParameter("id")));
  		}catch(Exception e){
  			e.printStackTrace();
  		}
}
	}

