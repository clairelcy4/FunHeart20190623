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
import _a0_fun_Init.model.MemberBean;

@WebServlet("/_a1_activity/ActivitiesPreInsert.do")
public class ActivitiesPreInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		String loginName = mb.getName();
		request.setAttribute("loginName", loginName);
		
		List<ActivityBean> ab = mb.getActivityBean();
		request.setAttribute("products_DPP", ab);
		
		RequestDispatcher rd = request.getRequestDispatcher("/_a1_activity/ActivitiesInsert.jsp");
		rd.forward(request, response);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
