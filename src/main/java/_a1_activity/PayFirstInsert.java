package _a1_activity;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/PayFirstInsert.do")
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
		* 1024 * 500 * 5)

public class PayFirstInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, String> errorMsgs = new HashMap<String, String>();
		Map<String, String> successMsgs = new HashMap<String, String>();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		// Code 植入區開始
		
		String activityNo = request.getParameter("activityNo");
		String expenseNo = request.getParameter("expenseNo");
		System.out.println("現在的活動序號："+activityNo);
		System.out.println("現在的消費序號："+expenseNo);
		
		long m = Integer.valueOf(activityNo);
		long n = Integer.valueOf(expenseNo);
		//用activityNo 取出這個Activity物件
		
		ExpenseBean eb = BeanHandler.getExpenseBean(mb, m, n);		
		
		// Code 植入區結束
		request.setAttribute("ErrMsg", errorMsgs);
		session.setAttribute("successMsg", successMsgs);

		try {
			String name = "";
			Double cost = 0D;
			Collection<Part> parts = request.getParts();
			if (parts != null) { // 如果這是一個上傳資料的表單
				for (Part p : parts) {
					String fldName = p.getName();
					String value = request.getParameter(fldName);	
					if (fldName.equals("cost")) {				
						try {
							cost  = Double.valueOf(value);		
						} catch (Exception e) {
							errorMsgs.put("errCost", "必須輸入數字");
						}	
					} 
					else if (fldName.equals("name")) {
						name = value;
					}
				}
			} else {
				errorMsgs.put("errTitle", "這個位置在ExpensesInsert.do");
			}
			// 如果輸入資料有錯誤，第一區
			if (!errorMsgs.isEmpty()) {
				// 轉交給原輸入資料的網頁來顯示錯誤訊息
				// Code 植入區開始
				
				session.setAttribute("products_DPP",eb);
				
				// Code 植入區結束
				RequestDispatcher rd = request.getRequestDispatcher("PayFirstListRedirect.jsp");
				rd.forward(request, response);
				return;
			}

			FunService funServiceHibernate = new FunServiceImplHibernate();	
			PayFirstBean pfb = new PayFirstBean(cost,name);
			
			eb.getPayFirstBean().add(pfb);
			pfb.setExpenseBean(eb);
			
			List<PayFirstBean> list = eb.getPayFirstBean();
			Double total = 0D;
			for (PayFirstBean ppfb:list) {
				total += ppfb.getPayFirst();
			}
			eb.setExpenseTotal(total);
			
			//這裡處理資料庫
			int a = funServiceHibernate.updateMemberBean(mb);
			System.out.println("updateMemberBean回應："+a);
			
			
			//計算那些人在 Teammate 但是已經在 PayFirst 有紀錄
			List <String> nameList = BeanHandler.getWhoNotPay(eb);
			session.setAttribute("nameList",nameList);
			
			//更新Session
			session.setAttribute("LoginOK", mb);
			successMsgs.put("success", "個人出資新增成功");
            	
			session.setAttribute("products_DPP",eb);
			
			response.sendRedirect(response.encodeRedirectURL("PayFirstListRedirect.jsp"));
			return;
			
		} catch (Exception e) {
			e.printStackTrace(); 
			errorMsgs.put("Exception", "這筆資料已經有了");
				
			session.setAttribute("products_DPP",eb);
			
			RequestDispatcher rd = request.getRequestDispatcher("PayFirstListRedirect.jsp");
			rd.forward(request, response);
			return;
		}
	}

}