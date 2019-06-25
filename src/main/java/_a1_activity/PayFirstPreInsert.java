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
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/PayFirstPreInsert.do")
public class PayFirstPreInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");	
		String loginName = mb.getName();
		
		String activityNo = request.getParameter("activityNo");
		String expenseNo = request.getParameter("expenseNo");
		System.out.println("現在的活動序號："+activityNo);
		System.out.println("現在的消費序號："+expenseNo);
		
		long m = Integer.valueOf(activityNo);
		long n = Integer.valueOf(expenseNo);
		//用activityNo 取出這個Activity物件
		
		ExpenseBean eb = BeanHandler.getExpenseBean(mb, m, n);

		//計算那些人在 Teammate 但是已經在 PayFirst 有紀錄
		List <String> nameList = BeanHandler.getWhoNotPay(eb);	
		session.setAttribute("nameList",nameList);
		
		request.setAttribute("products_DPP",eb);
		request.setAttribute("loginName",loginName);	
		
		RequestDispatcher rd = request.getRequestDispatcher("/_a1_activity/PayFirstInsert.jsp");
		rd.forward(request, response);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	
}
