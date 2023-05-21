package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoImpl;
import model.Image;
import model.ItemHistory;
import model.Review;

/**
 * Servlet implementation class AddReviewServlet
 */
@WebServlet("/AddReviewServlet")
public class AddReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReviewServlet() {
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
		Review review = new Review();
		DaoImpl daoimpl = new DaoImpl();
	    HttpSession session = request.getSession();

		String file1 = request.getParameter("files1");
		String file2 = request.getParameter("files2");
		String file3 = request.getParameter("files3");
		
		String starpoint = request.getParameter("starpoint");
		int star =  Integer.parseInt(starpoint);
		
		String text = request.getParameter("text");
		
		String stringkey = request.getParameter("ordernum");
		int ordernum = Integer.parseInt(stringkey);
		
		Image image = new Image();
		image.setImage1(file1);
		image.setImage2(file2);
		image.setImage3(file3);
		
		String stringitemid = request.getParameter("itemid");
		int itemid = Integer.parseInt(stringitemid);
		
		String userid = request.getParameter("userid");
		
		review.setStar(star);
		review.setText(text);
		review.setOrdernum(ordernum);
		review.setItemid(itemid);
		review.setUserid(userid);
		
		daoimpl.Insert_Review(review);
		daoimpl.Insert_Image(ordernum, image);
		
		Map<Integer,ItemHistory> item = daoimpl.Select_Purchase(userid);
		 session.setAttribute("itemhistory", item);
		
		PrintWriter out = response.getWriter();
		out.println("<script> alert('리뷰 등록이 완료되었습니다'); window.close(); reviews.location.reload(); </script>");
	}

}
