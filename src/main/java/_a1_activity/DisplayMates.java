package _a1_activity;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/DisplayMate.do")

public class DisplayMates extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
HttpSession session = request.getSession(false);
		
		int n = Integer.valueOf(request.getParameter("activityNo"));
		
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");

		ActivityBean ab = BeanHandler.getActivityBean(mb, n);
			
		request.setAttribute("products_DPP", ab);
		request.setAttribute("activityNo", n);
		
		RequestDispatcher rd = request.getRequestDispatcher("MateList.jsp");
		rd.forward(request, response);
		return;
	}
}