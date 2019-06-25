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

import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;

@WebServlet("/_a1_activity/ActivitiesInsert.do")
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
		* 1024 * 500 * 5)

public class ActivitiesInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, String> errorMsgs = new HashMap<String, String>();
		Map<String, String> successMsgs = new HashMap<String, String>();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		
		request.setAttribute("ErrMsg", errorMsgs);
		session.setAttribute("successMsg", successMsgs);

		try {
			String name = "";
//			String tel = "";
		
			Collection<Part> parts = request.getParts();

			//GlobalService.exploreParts(parts, request);
			if (parts != null) { // 如果這是一個上傳資料的表單
				for (Part p : parts) {
					String fldName = p.getName();

					String value = request.getParameter(fldName);
					
					if (fldName.equals("name")) {
						name  = value;
						if (name  == null || name.trim().length() == 0) {
							errorMsgs.put("errName", "輸入名稱才能新增活動唷");
						} else {
							request.setAttribute("name", name);
						}
						
					} 
//					else if (fldName.equals("tel")) {
//						tel  = value;
//						if (tel  == null || tel.trim().length() == 0) {
//							errorMsgs.put("errTel", "必須輸入電話");
//						} else {
//							request.setAttribute("tel", tel);
//						}
//					}
				}
				
			} else {
				errorMsgs.put("errTitle", "這個位置在Insert的144");
			}
			
			// 如果輸入資料有錯誤
			if (!errorMsgs.isEmpty()) {
				// 轉交給原輸入資料的網頁來顯示錯誤訊息
				List<ActivityBean> lab = mb.getActivityBean();
				session.setAttribute("ActivityBean", lab);
				RequestDispatcher rd = request.getRequestDispatcher("ActivitiesListRedirect.jsp");
				rd.forward(request, response);
				return;
			}

			FunService funServiceHibernate = new FunServiceImplHibernate();	
			ActivityBean ab = new ActivityBean(name);
			
			mb.getActivityBean().add(ab);
			//這裡處理資料庫
			int a = funServiceHibernate.updateMemberBean(mb);
			System.out.println("updateMemberBean回應："+a);
			
			//更新Session
			session.setAttribute("LoginOK", mb);
			successMsgs.put("success", "活動資料新增成功");
            
			List<ActivityBean> lab = mb.getActivityBean();
			session.setAttribute("ActivityBean", lab);
			
			response.sendRedirect(response.encodeRedirectURL("ActivitiesListRedirect.jsp"));
			return;
			
		} catch (Exception e) {
			e.printStackTrace(); 
			errorMsgs.put("Exception", "這筆資料已經有了");
			List<ActivityBean> lab = mb.getActivityBean();
			session.setAttribute("ActivityBean", lab);
			RequestDispatcher rd = request.getRequestDispatcher("ActivitiesListRedirect.jsp");
			rd.forward(request, response);
			return;
		}
	}

}