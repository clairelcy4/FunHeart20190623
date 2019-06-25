package _a3_buddyList;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;

@WebServlet("/_a3_buddyList/FriendsPreInsert.do")
public class FriendsPreInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		String loginName = mb.getName();
		request.setAttribute("loginName", loginName);
		
		List<FriendBean> mtb = mb.getFriendBean(); 
		request.setAttribute("products_DPP", mtb);
		
		RequestDispatcher rd = request.getRequestDispatcher("/_a3_buddyList/FriendsInsert.jsp");
		rd.forward(request, response);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
