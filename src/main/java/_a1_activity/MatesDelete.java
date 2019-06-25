package _a1_activity;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.TeammateBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/MatesDelete.do")
public class MatesDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		FunService serviceHibernate = new FunServiceImplHibernate();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		String str1 = request.getParameter("activityNo");
		String str2 = request.getParameter("teammateNo");
		
		long activityNo = Integer.valueOf(str1);
		long teammateNo = Integer.valueOf(str2);
		
		System.out.println("預計刪除活動序號："+str1+"，成員："+str2);
		
		//從資料庫移除
		long a = serviceHibernate.deleteTeammate(teammateNo);
		String teammateName = BeanHandler.getTeammateName(mb, activityNo, teammateNo); 
		String activityName = BeanHandler.getActivityName(mb, activityNo); 
		ActivityBean ab = BeanHandler.getActivityBean(mb,activityNo);
		//從物件移除
		if (a == 1) {		
			BeanHandler.removeTeammate(mb, activityNo, teammateNo); 
			//重算清單
					
			List<TeammateBean> tbList = ab.getTeammateBean();	
			List<FriendBean> fbHaveToCheck = BeanHandler.getDropDownName(mb,tbList);
			
			//掃描Teammate是否有PayFirst，如果有不能刪除
			FunService funServiceHibernate = new FunServiceImplHibernate();	
			List<String> paidList = funServiceHibernate.getWhoAlreadyPaid(activityNo);
			
			for (TeammateBean ttb:tbList) {
				ttb.setDeletable(true);
				for(String str:paidList) {
					if(ttb.getTeammateName().equals(str)) {
						ttb.setDeletable(false);
						break;
					}
				}
			}

			session.setAttribute("FriendDeleteMsg", "活動同伴[" + teammateName + "]刪除成功");
			session.setAttribute("LoginOK",mb);
			session.setAttribute("activityNo",activityNo);
			session.setAttribute("activityName",activityName);
			session.setAttribute("FriendBean", fbHaveToCheck);
		} else {

			session.setAttribute("activityNo",activityNo);
			session.setAttribute("activityName",activityName);
			session.setAttribute("FriendDeleteMsg", "活動同伴[" + teammateName + "]刪除失敗");
		}
		response.sendRedirect("MatesListRedirect.jsp");
		return;

	}

}
