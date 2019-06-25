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

@WebServlet("/_a1_activity/ExpensesPreInsert.do")
public class ExpensesPreInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");	
		String loginName = mb.getName();
		
		String activityNo = request.getParameter("activityNo");
		System.out.println("現在的活動序號："+activityNo);
		
		long n = Integer.valueOf(activityNo);
		//用activityNo 取出這個Activity物件
		ActivityBean ab = BeanHandler.getActivityBean(mb,n);

		request.setAttribute("products_DPP",ab);
		request.setAttribute("loginName",loginName);	
		
		RequestDispatcher rd = request.getRequestDispatcher("/_a1_activity/ExpensesInsert.jsp");
		rd.forward(request, response);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	
}
