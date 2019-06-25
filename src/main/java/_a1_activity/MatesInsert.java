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
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.TeammateBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;
import _a0_fun_Init.util.BeanHandler;

@WebServlet("/_a1_activity/MatesInsert.do")
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
		* 1024 * 500 * 5)

public class MatesInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, String> errorMsgs = new HashMap<String, String>();
		Map<String, String> successMsgs = new HashMap<String, String>();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		String activityNo = request.getParameter("activityNo");
		long n = Integer.valueOf(activityNo);
		
		//用n 取出這個Activity物件
		String activityName = BeanHandler.getActivityName(mb, n);
		ActivityBean ab = BeanHandler.getActivityBean(mb,n);		
		List<TeammateBean> tb = ab.getTeammateBean();
				
		List<FriendBean> fbHaveToCheck = BeanHandler.getDropDownName(mb,tb);
		
		request.setAttribute("ErrMsg", errorMsgs);
		session.setAttribute("successMsg", successMsgs);

		try {
			String name = "";
		
			Collection<Part> parts = request.getParts();

			if (parts != null) { // 如果這是一個上傳資料的表單
				for (Part p : parts) {
					String fldName = p.getName();
					String value = request.getParameter(fldName);
					if (fldName.equals("name")) {
						name  = value;
					} 
				}
				
			} else {
				errorMsgs.put("errTitle", "這個位置在MatesInsert的60");
			}
			
			// 如果輸入資料有錯誤
			if (!errorMsgs.isEmpty()) {
				// 轉交給原輸入資料的網頁來顯示錯誤訊息
				//沒變動直接傳出TeammateBean
				session.setAttribute("TeammateBean",tb);
				session.setAttribute("FriendBean", fbHaveToCheck);
				session.setAttribute("activityNo",activityNo);
				session.setAttribute("activityName",activityName);
					
				RequestDispatcher rd = request.getRequestDispatcher("MatesListRedirect.jsp");
				rd.forward(request, response);
				return;
			}
			
			String[] token = name.split("，");
			
			String teammateName = token[0];
			String teammatePhone = token[1];
			
			FunService funServiceHibernate = new FunServiceImplHibernate();	
			TeammateBean ttb = new TeammateBean(teammateName,teammatePhone,true);
			//已經取出來的 TeammateBean 再加上新物件
			tb.add(ttb);			
			
			//這裡處理資料庫
			int a = funServiceHibernate.updateMemberBean(mb);
			System.out.println("updateMemberBean回應："+a);
			
			//更新Session
			session.setAttribute("LoginOK", mb);
			successMsgs.put("success", "資料新增成功");
			
			
			//因為有新增一個Teammate，所以FriendBean也要重新比對
			fbHaveToCheck = BeanHandler.getDropDownName(mb,tb);
//			BeanHandler.setDeletable(ab);
		    //放回 TeammateBean。 應該 已經被 add 物件在後面 ，可以直接放回
			session.setAttribute("TeammateBean",tb);  
			session.setAttribute("FriendBean", fbHaveToCheck);
			session.setAttribute("activityNo",activityNo);
			session.setAttribute("activityName",activityName);
			response.sendRedirect(response.encodeRedirectURL("MatesListRedirect.jsp"));
			return;
			
		} catch (Exception e) {
			e.printStackTrace(); 
			errorMsgs.put("Exception", "這筆資料已經有了");
//			BeanHandler.setDeletable(ab);
			session.setAttribute("TeammateBean",tb);
			session.setAttribute("FriendBean", fbHaveToCheck);
			session.setAttribute("activityName",activityName);
			session.setAttribute("activityNo",activityNo);
			RequestDispatcher rd = request.getRequestDispatcher("MatesListRedirect.jsp");
			rd.forward(request, response);
			return;
		}
	}

}