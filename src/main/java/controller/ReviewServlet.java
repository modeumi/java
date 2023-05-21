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
import model.ItemHistory;
import model.Review;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
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
		String ordernum = request.getParameter("reviewitem");
		String YorN = request.getParameter("reviewhistory");
		String itemnum = request.getParameter("itemnum");
		int num = Integer.parseInt(itemnum);
		int order= Integer.parseInt(ordernum);
		DaoImpl daoimpl = new DaoImpl();
		// 리뷰 페이지의 아이템 틀을 위해 주문번호로 아이템 가져옴 
		ItemHistory itemhistory = daoimpl.OrderToItem(order);
		session.setAttribute("reviewitem", itemhistory);
		// 리뷰 작성 기록이 있으면해당 리뷰를 가져옮
		if (YorN.equals("Y")) {
			Review review = daoimpl.getreview(order);
			session.setAttribute("review_itemid", review.getItemid());
			session.setAttribute("review_order", review.getOrdernum());
			session.setAttribute("review", review);
		}
		// 리부 작성 기록이 없다면 새로 만듦
		if (YorN.equals("N")){
			Review review = daoimpl.firstreview(order);
			session.setAttribute("review_itemid", review.getItemid());
			session.setAttribute("review_order", review.getOrdernum());
			session.setAttribute("review", review);
		}
		
		response.sendRedirect("PurchaseHistory.jsp");
	}

}
