package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Collection;
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
 * Servlet implementation class purchaseServlet
 */
@WebServlet("/purchaseServlet")
public class purchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public purchaseServlet() {
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
		String type = request.getParameter("typepay");
		Map<Integer,Item> cart = (Map<Integer,Item>) session.getAttribute("cart");
		Collection<Item> items = cart.values();
		String id = (String) session.getAttribute("log_id");
		DaoImpl daoimpl = new DaoImpl();
		for (Item item : items) {
			daoimpl.purchase(item,id,type);
		}
		cart.clear();
		String alertScript = "<script>alert('구매가 완료되었습니다.');"
				+ "window.location.href = 'home.jsp';</script>";
			response.getWriter().println(alertScript);
	}

}
