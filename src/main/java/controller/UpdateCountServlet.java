package controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoImpl;
import model.Item;

/**
 * Servlet implementation class updatecountServlet
 */
@WebServlet("/updatecountServlet")
public class UpdateCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String paraid = request.getParameter("itemId");
		int id = Integer.parseInt(paraid);
		
		String countst = request.getParameter("quantity");
		int count = Integer.parseInt(countst);

		Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart");
		Item item = cart.get(id);
		    item.setCount(count);
			cart.put(item.getId(), item);
			session.setAttribute("cart", cart);
			response.getWriter().println("<script>window.close();</script>");
			
	}

}
