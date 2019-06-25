package _a2_payBack;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _a0_fun_Init.model.MemberBean;

@WebServlet("/_a2_payBack/DisplayPayBack.do")

public class DisplayPayBack extends HttpServlet {

	private static final long serialVersionUID = 1L;
	int pageNo = 1;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");

		request.setAttribute("products_DPP", mb);
		
		RequestDispatcher rd = request.getRequestDispatcher("PayBackList.jsp");
		rd.forward(request, response);
		return;
	}
}