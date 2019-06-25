package _a1_activity;

import java.io.IOException;

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
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/ExpensesDelete.do")
public class ExpensesDelete extends HttpServlet {
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
		String str2 = request.getParameter("expenseNo");
		
		long activityNo = Integer.valueOf(str1);
		long expenseNo = Integer.valueOf(str2);
		
		System.out.println("預計刪除消費編號："+str1+"，成員："+str2);
		
		//從資料庫移除
		long a = serviceHibernate.deleteExpense(expenseNo);
		
		String expenseName = BeanHandler.getExpenseName(mb, activityNo, expenseNo); 
		ActivityBean ab = BeanHandler.getActivityBean(mb,activityNo);
		//從物件移除
		if (a == 1) {		
			BeanHandler.removeExpense(mb, activityNo, expenseNo);
			
			session.setAttribute("FriendDeleteMsg", "消費資料[" + expenseName + "]刪除成功");
			session.setAttribute("products_DPP",ab);
			
		} else {
			session.setAttribute("products_DPP",ab);
			session.setAttribute("FriendDeleteMsg", "費資料[" + expenseName + "]刪除失敗");
		}
		response.sendRedirect("ExpensesListRedirect.jsp");
		return;

	}

}
