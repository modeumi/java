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
import model.Review;

/**
 * Servlet implementation class PageLoadServlet
 */
@WebServlet("/PageLoadServlet")
public class PageLoadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageLoadServlet() {
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
		
		String key = request.getParameter("itemid");
		int intkey = Integer.parseInt(key);
		
		DaoImpl daoimpl = new DaoImpl();
		
		Map<Integer, Review> reviews =	daoimpl.Select_Review(intkey);
		session.setAttribute("itemreviews", reviews);
		
		Map<Integer, Item> select_item = (Map<Integer, Item>) session.getAttribute("ItemField");
		if (select_item == null) {
			select_item = new HashMap<>();
		}
		
		Item initem = new Item();
		initem = daoimpl.Select_item(intkey);
		
		System.out.println(initem.getCount());
		System.out.println(initem.getId());
		System.out.println(initem.getImg());
		System.out.println(initem.getName());
		System.out.println(initem.getPrice());
		System.out.println(initem.getUrl());
		
		select_item.put(initem.getId(), initem);
    	session.setAttribute("ItemField", select_item);
    	
    	System.out.println(session.getAttribute("ItemField"));
    	select_item = (Map<Integer,Item>) session.getAttribute("ItemField");
    	System.out.println(select_item.values());
    	
		response.sendRedirect( key+ ".jsp");
	}

}
