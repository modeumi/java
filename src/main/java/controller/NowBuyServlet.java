package controller;

import java.io.IOException;
import java.util.HashMap;
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
 * Servlet implementation class NowBuyServlet
 */
@WebServlet("/NowBuyServlet")
public class NowBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NowBuyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String paraid = request.getParameter("itemnum");
		String countst = request.getParameter("quantity");
		int count = Integer.parseInt(countst);
		int id = Integer.parseInt(paraid);
		DaoImpl daoimpl = new DaoImpl();

		Item item = daoimpl.addcart(id);
		item.setCount(count);
		Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<>();
		}
		if (cart.containsKey(item.getId())) {
			Item existingItem = cart.get(item.getId());
			existingItem.setCount(existingItem.getCount() + count);
			cart.put(item.getId(), existingItem);
			session.setAttribute("cart", cart);
		} else {
			cart.put(item.getId(), item);
			session.setAttribute("cart", cart);
		}
		response.sendRedirect("PurchasePage.jsp");
	}

}
