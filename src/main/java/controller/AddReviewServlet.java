package controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Dao.DaoImpl;
import model.Image;
import model.ItemHistory;
import model.Review;

/**
 * Servlet implementation class AddReviewServlet
 */
@WebServlet("/AddReviewServlet")
public class AddReviewServlet extends HttpServlet {
	 private static final String SAVE_DIRECTORY = "/img/upload"; // 파일이 저장될 폴더 경로
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

	    for (int i =1; i <=3; i++ ) {
	    	Part file+i = request.getPart("file"+i);
	    }
		Part file1 = request.getPart("files1");
		Part file2 = request.getPart("files2");
		Part file3 = request.getPart("files3");
		String filename1 = getFileName(file1);
		String filename2 = getFileName(file2);
		String filename3 = getFileName(file3);
		
		 String savePath = getServletContext().getRealPath("") + File.separator + SAVE_DIRECTORY;
	        File saveDir = new File(savePath);
	        if (!saveDir.exists()) {
	            saveDir.mkdir();
	        }
	        String filePath = savePath + File.separator + filename1;
	        file1.write(filePath);
		
		String starpoint = request.getParameter("starpoint");
		int star =  Integer.parseInt(starpoint);
		
		String text = request.getParameter("text");
		
		String stringkey = request.getParameter("ordernum");
		int ordernum = Integer.parseInt(stringkey);
		
		Image image = new Image();
		image.setImage1(filename1);
		image.setImage2(filename2);
		image.setImage3(filename3);
		
		String stringitemid = request.getParameter("itemid");
		int itemid = Integer.parseInt(stringitemid);
		
		String userid =(String) session.getAttribute("log_id");
		
		String nickname = (String) session.getAttribute("log_nickname");
		
		review.setStar(star);
		review.setText(text);
		review.setOrdernum(ordernum);
		review.setItemid(itemid);
		review.setUserid(userid);
		review.setNickname(nickname);
		
		daoimpl.Insert_Review(review);
		daoimpl.Insert_Image(ordernum, image);
		
		Map<Integer,ItemHistory> item = daoimpl.Select_Purchase(userid);
		 session.setAttribute("itemhistory", item);
		
		PrintWriter out = response.getWriter();
		out.println("<script> alert('리뷰 등록이 완료되었습니다'); window.close(); reviews.location.reload(); </script>");
	}

	private String getFileName(Part part) {
		   String contentDispositionHeader = part.getHeader("content-disposition");
	        for (String header : contentDispositionHeader.split(";")) {
	            if (header.trim().startsWith("filename")) {
	                return header.substring(header.indexOf('=') + 1).trim().replace("\"", "");
	            }
	        }
		return null;
	}

}
