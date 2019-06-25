package _a3_buddyList;

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

import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;

@WebServlet("/_a3_buddyList/FriendsInsert.do")
@MultipartConfig(location = "", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 500, maxRequestSize = 1024
		* 1024 * 500 * 5)

public class FriendsInsert extends HttpServlet {
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
			String tel = "";
		
			Collection<Part> parts = request.getParts();

			//GlobalService.exploreParts(parts, request);
			if (parts != null) { // 如果這是一個上傳資料的表單
				for (Part p : parts) {
					String fldName = p.getName();

					String value = request.getParameter(fldName);
					
					if (fldName.equals("name")) {
						name  = value;
						if (name  == null || name.trim().length() == 0) {
							errorMsgs.put("errName", "必須輸入姓名");
						} else {
							request.setAttribute("name", name);
						}
						
					} else if (fldName.equals("tel")) {
						tel  = value;
						if (tel  == null || tel.trim().length() == 0) {
							errorMsgs.put("errTel", "必須輸入電話");
						} else {
							request.setAttribute("tel", tel);
						}
					}
				}
				
			} else {
				errorMsgs.put("errTitle", "這個位置在Insert的144");
			}
			
			// 如果輸入資料有錯誤
			if (!errorMsgs.isEmpty()) {
				// 轉交給原輸入資料的網頁來顯示錯誤訊息
				List<FriendBean> lb = mb.getFriendBean();
				session.setAttribute("FriendBean", lb);
				RequestDispatcher rd = request.getRequestDispatcher("FriendsListRedirect.jsp");
				rd.forward(request, response);
				return;
			}

			FunService funServiceHibernate = new FunServiceImplHibernate();	
			FriendBean mtb = new FriendBean(name,tel);
			
			mb.getFriendBean().add(mtb);
			//這裡處理資料庫
			int a = funServiceHibernate.updateMemberBean(mb);
			System.out.println("updateMemberBean回應："+a);
			
			//更新Session
			session.setAttribute("LoginOK", mb);
			successMsgs.put("success", "資料新增成功");
			
			List<FriendBean> lb = mb.getFriendBean();
			session.setAttribute("FriendBean", lb);
            // 新增成功，通知瀏覽器對新網址發出請求
			response.sendRedirect(response.encodeRedirectURL("FriendsListRedirect.jsp"));
			return;
			
		} catch (Exception e) {
			e.printStackTrace(); 
			errorMsgs.put("Exception", "這筆資料已經有了");
			RequestDispatcher rd = request.getRequestDispatcher("FriendsListRedirect.jsp");
			rd.forward(request, response);
			return;
		}
	}

//	public String getFileName(final Part part) {
//		for (String content : part.getHeader("content-disposition").split(";")) {
//			if (content.trim().startsWith("filename")) {
//				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
//			}
//		}
//		return null;
//	}
//	// 本方法於主控台印出 parts 內的重要資訊，純粹為觀察用，沒有功能上的用途。
//	public void exploreParts(Collection<Part> parts, HttpServletRequest req) {
//		try {
//			for (Part part : parts) {
//				String name = part.getName();
//				String contentType = part.getContentType();
//				String value = "";
//				long size = part.getSize(); // 上傳資料的大小，即上傳資料的位元組數
//				try (InputStream is = part.getInputStream();) {
//					if (contentType != null) { // 表示該part為檔案
//						// 取出上傳檔案的檔名
//						String filename = getFileName(part);
//						// 將上傳的檔案寫入到location屬性所指定的資料夾
//						part.write(filename);
//					} else { // 表示該part為一般的欄位
//						// 將上傳的欄位資料寫入到location屬性所指定的資料夾，檔名為"part_"+ name
//						part.write("part_" + name);
//						value = req.getParameter(name);
//					}
//					System.out.printf("%-15s %-15s %8d  %-20s \n", name, contentType, size, value);
//				}
//			}
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}

}