package _a1_activity;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/_a1_activity/PayFirstDelete.do")
public class PayFirstDelete extends HttpServlet {
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
		String str3 = request.getParameter("payfirstNo");
		
		long activityNo = Integer.valueOf(str1);
		long expenseNo = Integer.valueOf(str2);
		long payfirstNo = Integer.valueOf(str3);
		
		System.out.println("預計刪除活動編號："+str1+"，消費："+str2+"，個人出資："+str3);
		
		//從資料庫移除
		long a = serviceHibernate.deletePayFirst(payfirstNo);
		
		ExpenseBean eb = BeanHandler.getExpenseBean(mb, activityNo, expenseNo);
		//從物件移除
		if (a == 1) {		
			BeanHandler.removePayFirst(mb, activityNo, expenseNo,payfirstNo);
			
			List<PayFirstBean> list = eb.getPayFirstBean();
			Double total = 0D;
			for (PayFirstBean ppfb:list) {
				total += ppfb.getPayFirst();
			}
			eb.setExpenseTotal(total);
			serviceHibernate.updateExpenseBean(eb);
			
			//計算那些人在 Teammate 但是已經在 PayFirst 有紀錄
			List <String> nameList = BeanHandler.getWhoNotPay(eb);
			session.setAttribute("nameList",nameList);
			session.setAttribute("FriendDeleteMsg", "消費資料刪除成功");
			session.setAttribute("products_DPP",eb);
			
		} else {
			session.setAttribute("products_DPP",eb);
			session.setAttribute("FriendDeleteMsg", "消費資料刪除失敗");
		}
		response.sendRedirect("PayFirstListRedirect.jsp");
		return;
	}
}
