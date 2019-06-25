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
import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/DisplayExpense.do")

public class DisplayExpenses extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		long n = Integer.valueOf(request.getParameter("activityNo"));
		
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		FunService serviceHibernate = new FunServiceImplHibernate();
		
		List<ExpenseBean> list = serviceHibernate.getExpenseList(n);
		
		ActivityBean ab = BeanHandler.getActivityBean(mb, n);
		
		ab.setExpenseBean(list);
			
		request.setAttribute("products_DPP", ab);
		
		RequestDispatcher rd = request.getRequestDispatcher("ExpenseList.jsp");
		rd.forward(request, response);
		return;
	}
}