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

import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/DisplayPayFirst.do")

public class DisplayPayFirst extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		long actNo = Integer.valueOf(request.getParameter("activityNo"));
		long expNo = Integer.valueOf(request.getParameter("expenseNo"));
			
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		FunService serviceHibernate = new FunServiceImplHibernate();
		
		List<PayFirstBean> list = serviceHibernate.getPayFirstList(expNo);
		
		ExpenseBean eb = BeanHandler.getExpenseBean(mb, actNo, expNo);
		
		eb.setPayFirstBean(list);
		
		request.setAttribute("products_DPP", eb);
		
		RequestDispatcher rd = request.getRequestDispatcher("PayFirstList.jsp");
		rd.forward(request, response);
		return;
	}
}