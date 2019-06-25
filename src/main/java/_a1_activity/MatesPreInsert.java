package _a1_activity;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
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

@WebServlet("/_a1_activity/MatesPreInsert.do")
public class MatesPreInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		String loginName = mb.getName();
		request.setAttribute("loginName", loginName);
		
		String activityNo = request.getParameter("activityNo");
		
		System.out.println("現在的活動序號："+activityNo);
		
		long n = Integer.valueOf(activityNo);
		//用n 取出這個Activity物件
		ActivityBean ab = BeanHandler.getActivityBean(mb,n);
		String activityName = ab.getActivityName();
		
		//掃描Teammate是否有PayFirst，如果有不能刪除
		List<TeammateBean> tbList = ab.getTeammateBean();
		FunService funServiceHibernate = new FunServiceImplHibernate();	
		List<String> paidList = funServiceHibernate.getWhoAlreadyPaid(n);
		
		for (TeammateBean ttb:tbList) {
			ttb.setDeletable(true);
			for(String str:paidList) {
				if(ttb.getTeammateName().equals(str)) {
					ttb.setDeletable(false);
					break;
				}
			}
		}
		
		List<FriendBean> fbHaveToCheck = BeanHandler.getDropDownName(mb,tbList);
		
		
		request.setAttribute("products_DPP", tbList);
		request.setAttribute("FriendBean", fbHaveToCheck);
		
		request.setAttribute("activityNo",activityNo);
		request.setAttribute("activityName",activityName);	
		
		RequestDispatcher rd = request.getRequestDispatcher("/_a1_activity/MatesInsert.jsp");
		rd.forward(request, response);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	
}
