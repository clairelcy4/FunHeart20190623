package _a3_buddyList;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;

@WebServlet("/_a3_buddyList/FriendsDelete.do")
public class FriendsDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		FunService serviceHibernate = new FunServiceImplHibernate();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		String friendNo = request.getParameter("friendNo");
		System.out.println("朋友序號："+friendNo);
		
		long n = Integer.valueOf(friendNo);
		System.out.println("預計刪除朋友序號："+n);
		
		FriendBean fb = serviceHibernate.queryFriend(n);
		String friendName = fb.getFriendName();

		System.out.println("預計刪除朋友姓名："+friendName);
		
		long a = serviceHibernate.deleteFriend(n);
		
		if (a == 1) {
			mb.getFriendBean().remove(fb);
			session.setAttribute("FriendDeleteMsg", "朋友[" + friendName + "]刪除成功");
			session.setAttribute("LoginOK",mb);
			List<FriendBean> lb = mb.getFriendBean();
			session.setAttribute("FriendBean", lb);
		} else {
			List<FriendBean> lb = mb.getFriendBean();
			session.setAttribute("FriendBean", lb);
			session.setAttribute("FriendDeleteMsg", "朋友[" + friendName + "]刪除失敗");
		}
		response.sendRedirect("FriendsListRedirect.jsp");
		return;

	}

}
