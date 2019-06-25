package _a2_payBack;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.model.TeammateBean;
import _a0_fun_Init.service.FunService;
import _a0_fun_Init.service.impl.FunServiceImplHibernate;
import _a0_fun_Init.util.BeanHandler;
import _a2_payBack.model.PayBalanceBean;

@WebServlet("/_a2_payBack/DisplayPayBackDetail.do")

public class DisplayPayBackDetail extends HttpServlet {

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
		
		List<TeammateBean> teammatesList = BeanHandler.getActivityBean(mb, n).getTeammateBean();
		
		FunService serviceHibernate = new FunServiceImplHibernate();
		List<PayFirstBean> list = serviceHibernate.queryPayFirstAvg(n);
		List<PayFirstBean> list2 = serviceHibernate.queryPayFirstOnMe(n);
		
		Double total = 0D;
		for (PayFirstBean pfb:list) {
			total += pfb.getPayFirst();
		}
		Double avg = total/teammatesList.size();
		
		System.out.println("總共："+total);
		System.out.println("平均每人："+total/teammatesList.size());	
		
		List <PayBalanceBean> payBalance = new ArrayList<>();
		
		for (TeammateBean mb2:teammatesList) {
			PayBalanceBean pb = new PayBalanceBean();
			
			pb.setPayName(mb2.getTeammateName());
			
			Double totalMoney = 0D;
			
			for (PayFirstBean pfb:list) {
				if (pfb.getPayName().equals(mb2.getTeammateName())) {
					
					Double money = pfb.getPayFirst();
					totalMoney += money;
				} 	
			}
			
			pb.setBalanceBefore(totalMoney);
			pb.setBalanceAfter(totalMoney-avg);
			payBalance.add(pb);
		}
		
		System.out.println("列印 payBalance List=============");
		
		for (PayBalanceBean pbb:payBalance) {
			System.out.println(pbb.getPayName()+"是"+pbb.getBalanceAfter());
		}
		
		List <PayBalanceBean> finalList = new ArrayList<>();
		
		for(PayBalanceBean bb:payBalance) {
			finalList.add(new PayBalanceBean(bb.getPayName(),bb.getBalanceAfter()));
		}
		
		//清除零
		Iterator<PayBalanceBean> it = finalList.iterator();
		
		while (it.hasNext()) {
			PayBalanceBean bb = it.next();
			if(bb.getBalanceAfter() == 0) {
				it.remove();
			}
		}
		
		System.out.println("去除數字為0的沒有借貸關係，物件數量剩下:"+finalList.size());
		
		List <String> textView = new ArrayList<String>();
		
		//計算
		while ( finalList.size() > 1 ) {

			Double sum = 0D;
			PayBalanceBean maxValue = Collections.max(finalList);
			PayBalanceBean minValue = Collections.min(finalList);			
			sum = maxValue.getBalanceAfter()+minValue.getBalanceAfter();
			
			if ( sum > 0) { 
				
				String str0 = "<B>"+ minValue.getPayName()+ "</B>"+ " 請付給<B> "+maxValue.getPayName()+" </B>總共 "+Math.abs(minValue.getBalanceAfter())+" 元";
				textView.add(str0);
				System.out.println(maxValue.getPayName()+"剩下:"+(sum)+"元");
				finalList.remove(minValue);				
				maxValue.setBalanceAfter(sum);
				System.out.println("逐步去除，物件數量剩下:"+finalList.size());
			} else if (sum < 0){
				
				String str1 = "<B>"+ minValue.getPayName()+ "</B>"+ " 請付給<B> "+maxValue.getPayName()+" </B>總共 "+Math.abs(maxValue.getBalanceAfter())+" 元";
				textView.add(str1);
				System.out.println(minValue.getPayName()+"剩下:"+(sum)+"元");
				finalList.remove(maxValue);
				minValue.setBalanceAfter(sum);
				System.out.println("逐步去除，物件數量剩下:"+finalList.size());
			} else if (sum == 0) {
				
				String str2 = "<B>"+ minValue.getPayName()+ "</B>"+ " 請付給<B> "+maxValue.getPayName()+" </B>總共 "+Math.abs(maxValue.getBalanceAfter())+" 元";
				textView.add(str2);
				finalList.remove(maxValue);
				finalList.remove(minValue);
				System.out.println("逐步去除，物件數量剩下:"+finalList.size());
			}
			
		}
		
		ActivityBean ab = BeanHandler.getActivityBean(mb, n);
		request.setAttribute("products_DPP", ab);
		request.setAttribute("payBalance", payBalance);
		request.setAttribute("OnMe", list2);
		request.setAttribute("textView", textView);
		
		RequestDispatcher rd = request.getRequestDispatcher("PayBackDetailList.jsp");
		rd.forward(request, response);
		return;
	}
}