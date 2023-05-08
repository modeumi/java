package ch18.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.DBConnection;
import ch18.com.model.UserInfo;
import ch18.com.model.UserInfoDaoImpl;

/**
 * Servlet implementation class UserInfoAddServlet
 */
@WebServlet("/UserInfoAddServlet")
public class UserInfoAddServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public UserInfoAddServlet() {
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
//	   request.setCharacterEncoding("UTF-8");
//	   response.setContentType("text/html;charset=UTF-8");
//      PrintWriter out = response.getWriter();
//      String id = request.getParameter("id");
//      String pw = request.getParameter("pw");
//      String name = request.getParameter("name");
//      UserInfo userinfo = new UserInfo();
//      userinfo.setId(id);
//      userinfo.setPw(pw);
//      userinfo.setName(name);
//      Connection conn = null;
//      PreparedStatement pstmt = null;
//      try {
//         conn = DBConnection.getConnection();
//         pstmt = conn.prepareStatement("INSERT INTO info VALUES(?,?,?)");
//         pstmt.setString(1, userinfo.getId());
//         pstmt.setString(2, userinfo.getPw());
//         pstmt.setString(3, userinfo.getName());
//         pstmt.executeUpdate();
//         response.sendRedirect("UserInfoListServlet");
//      } catch (Exception e) {
//         e.printStackTrace();
//      } finally {
//         try {
//            if (pstmt != null)
//               pstmt.close();
//            if (conn != null)
//               conn.close();
//         } catch (Exception ex) {
//            // TODO: handle exception
//         }
//      }
	   try {
		   UserInfoDaoImpl userinfodao = new UserInfoDaoImpl();
		   userinfodao.insert(new UserInfo()
				   .setId(request.getParameter("id"))
				   .setPw(request.getParameter("pass"))
				   .setName(request.getParameter("name")));
		   response.sendRedirect("UserInfoListServlet");
	   }catch (Exception e) {
		   e.printStackTrace();
	   }
   }

}