package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class AddcartServlet
 */
@WebServlet("/AddcartServlet")
public class AddcartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddcartServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String paraid = request.getParameter("itemnum");
		String page = request.getParameter("page");
		int id = Integer.parseInt(paraid);
		DaoImpl daoimpl = new DaoImpl();
		int idnum = id *100;
		int num = 0;
		if (session.getAttribute("num") != null) {
		    num = (int) session.getAttribute("num");
		}
		num++;
		session.setAttribute("num", num);
		Item item =daoimpl.addcart(id , num);
		Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<>();
		}
			session.setAttribute("item", item);
			cart.put(idnum+num, item);
			session.setAttribute("cart", cart);
			response.sendRedirect(page);
	}

	}

