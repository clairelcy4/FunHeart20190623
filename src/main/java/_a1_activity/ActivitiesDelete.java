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
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;

@WebServlet("/_a1_activity/ActivitiesDelete.do")
public class ActivitiesDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		FunService serviceHibernate = new FunServiceImplHibernate();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		String activityNo = request.getParameter("activityNo");
		System.out.println("預計刪除活動序號："+activityNo);
		
		long n = Integer.valueOf(activityNo);
		System.out.println("預計刪除活動序號："+n);
		
		
		long a = serviceHibernate.deleteActivity(n);
		String activityName = "";
		
		if (a == 1) {
			
			List<ActivityBean> list = mb.getActivityBean();
			for (ActivityBean aab:list) {
				
				if(aab.getActivityNo() == n) {
					activityName = aab.getActivityName();
					mb.getActivityBean().remove(aab);	
					break;
				}
			}
			
			session.setAttribute("FriendDeleteMsg", "活動[" + activityName + "]刪除成功");
			session.setAttribute("LoginOK",mb);
			
			session.setAttribute("ActivityBean", list);
		} else {
			List<ActivityBean> lab = mb.getActivityBean();
			session.setAttribute("ActivityBean", lab);
			session.setAttribute("FriendDeleteMsg", "活動[" + activityName + "]刪除失敗");
		}
		response.sendRedirect("ActivitiesListRedirect.jsp");
		return;

	}

}
