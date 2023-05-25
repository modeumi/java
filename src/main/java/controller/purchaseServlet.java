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
import model.ItemHistory;

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
		int point = 0;
		HttpSession session = request.getSession();
		DaoImpl daoimpl = new DaoImpl();
//		String type = request.getParameter("typepay");
		Map<Integer,Item> cart = (Map<Integer,Item>) session.getAttribute("cart");
		String id = (String)session.getAttribute("log_id");
		//적립 될 포인트
		String stringaddpoint = request.getParameter("subtotalprice");
		int addpoint = Integer.parseInt(stringaddpoint);
		addpoint = addpoint/100;
		//사용한 포인트 
		String stringpoint = request.getParameter("subusepoint");
		int usepoint = Integer.parseInt(stringpoint);
		// 현재 포인트
		int totalpoint = (int)session.getAttribute("log_point");
		// 현재 포인트 - 사용한 포인트 + 적립 포인트 
		int beforepoint = totalpoint - usepoint + addpoint;
		session.setAttribute("log_point", beforepoint);
		daoimpl.Update_Point(id,beforepoint);
		
		Collection<Item> items = cart.values();
		
		for (Item item : items) {
			daoimpl.Insert_Purchase(item,id);
		}
		// 적립 포인트 +
		cart.clear();
		 Map<Integer,ItemHistory> item = daoimpl.Select_Purchase(id);
		 session.setAttribute("itemhistory", item);
		String alertScript = "<script>alert('구매가 완료되었습니다.');"
				+ "window.location.href = 'home.jsp';</script>";
			response.getWriter().println(alertScript);
	}

}
