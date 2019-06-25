package _a0_fun_Init.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.model.TeammateBean;

public class BeanHandler {
	
	public static ActivityBean getActivityBean(MemberBean mb,long n) {
		List<ActivityBean> list = mb.getActivityBean();	
		ActivityBean newAB = null;		
		for (ActivityBean aab:list) {
			if(aab.getActivityNo() == n) {				
				newAB = aab;
				break;
			}
		}
		return newAB;
	}
	
	public static String getActivityName(MemberBean mb,long n) {
		String activityName = "";
		List<ActivityBean> list = mb.getActivityBean();	
				
		for (ActivityBean aab:list) {
			if(aab.getActivityNo() == n) {				
				activityName = aab.getActivityName();
				break;
			}
		}
		return activityName;
	}
	
	//用新的物件，不然迭代器會移除項目
	//for each會遇到問題，無法移除
	public static List<FriendBean> getDropDownName(MemberBean mb,List<TeammateBean> tb){
		List<FriendBean> fbHaveToCheck = new ArrayList<FriendBean>(mb.getFriendBean());
		Iterator<FriendBean> iterator = fbHaveToCheck.iterator();  
		    while(iterator.hasNext()) { 
		    	 FriendBean fb = iterator.next(); 	 
		    	 for (TeammateBean mateCompare:tb) {		
						if(fb.getFriendName().equals(mateCompare.getTeammateName())
								&& fb.getFriendPhone().equals(mateCompare.getTeammatePhone())
								) {
							iterator.remove(); 
							break;
						}	
					}        
	     }  
		return fbHaveToCheck;	
	}
	
	public static void removeTeammate(MemberBean mb,long activityNo,long teammateNo) {
	
		Iterator<ActivityBean> iterator = mb.getActivityBean().iterator();
		   while(iterator.hasNext()) {  	 
			   ActivityBean ab = iterator.next(); 	 
		    	 if(ab.getActivityNo() == activityNo) {  		 
		    		 Iterator<TeammateBean> iterator2 = ab.getTeammateBean().iterator();	 
		    		 	while(iterator2.hasNext()) { 		
		    		 		TeammateBean ttb = iterator2.next(); 		
		    		 		if(ttb.getTeammateNo() == teammateNo) {
		    		 			ab.getTeammateBean().remove(ttb);
		    		 			break;
		    		 		}	
		    		 	}
		    		 	break;
		    	 }
	     } 
	}
	
	public static String getTeammateName(MemberBean mb,long activityNo,long teammateNo) {
		
		String teammateName = "";
		Iterator<ActivityBean> iterator = mb.getActivityBean().iterator();
		   while(iterator.hasNext()) {  	 
			   ActivityBean ab = iterator.next(); 	 
		    	 if(ab.getActivityNo() == activityNo) {  		 
		    		 Iterator<TeammateBean> iterator2 = ab.getTeammateBean().iterator();	 
		    		 	while(iterator2.hasNext()) { 		
		    		 		TeammateBean ttb = iterator2.next(); 		
		    		 		if(ttb.getTeammateNo() == teammateNo) {
		    		 			teammateName = ttb.getTeammateName();
		    		 			break;
		    		 		}	
		    		 	}
		    		 	break;
		    	 }
	     }
		return teammateName; 
	}
	
	public static void removeExpense(MemberBean mb,long activityNo,long expenseNo) {
		
		Iterator<ActivityBean> iterator = mb.getActivityBean().iterator();
		   while(iterator.hasNext()) {  	 
			   ActivityBean ab = iterator.next(); 	 
		    	 if(ab.getActivityNo() == activityNo) {  		 
		    		 Iterator<ExpenseBean> iterator2 = ab.getExpenseBean().iterator();	 
		    		 	while(iterator2.hasNext()) { 		
		    		 		ExpenseBean eeb = iterator2.next(); 		
		    		 		if(eeb.getExpenseNo() == expenseNo) {
		    		 			ab.getExpenseBean().remove(eeb);
		    		 			break;
		    		 		}	
		    		 	}
		    		 	break;
		    	 }
	     } 
	}
	
	public static String getExpenseName(MemberBean mb,long activityNo,long expenseNo) {
		
		String expenseName = "";
		Iterator<ActivityBean> iterator = mb.getActivityBean().iterator();
		   while(iterator.hasNext()) {  	 
			   ActivityBean ab = iterator.next(); 	 
		    	 if(ab.getActivityNo() == activityNo) {  		 
		    		 Iterator<ExpenseBean> iterator2 = ab.getExpenseBean().iterator();	 
		    		 	while(iterator2.hasNext()) { 		
		    		 		ExpenseBean eeb = iterator2.next(); 		
		    		 		if(eeb.getExpenseNo() == expenseNo) {
		    		 			expenseName = eeb.getExpenseName();
		    		 			break;
		    		 		}	
		    		 	}
		    		 	break;
		    	 }
	     }
		return expenseName; 
	}
	
	public static ExpenseBean getExpenseBean(MemberBean mb,long m,long n) {
		List<ActivityBean> alist = mb.getActivityBean();	
		ExpenseBean newEB = null;		
		for (ActivityBean aab:alist) {
			if(aab.getActivityNo() == m) {				

				List<ExpenseBean> elist = aab.getExpenseBean();
					for (ExpenseBean eeb:elist) {
						if(eeb.getExpenseNo() == n) {
							newEB = eeb;
							break;
						}
					}	
				break;
			}
		}
		return newEB;
	}

	public static void removePayFirst(MemberBean mb, long activityNo, long expenseNo, long payfirstNo) {
		
		Iterator<ActivityBean> iterator = mb.getActivityBean().iterator();
		   while(iterator.hasNext()) {  	 
			   ActivityBean ab = iterator.next(); 	 
		    	 if(ab.getActivityNo() == activityNo) {  		 
		    		 Iterator<ExpenseBean> iterator2 = ab.getExpenseBean().iterator();	 
		    		 	while(iterator2.hasNext()) { 		
		    		 		ExpenseBean eeb = iterator2.next(); 		
		    		 		if(eeb.getExpenseNo() == expenseNo) {
		    		 			Iterator<PayFirstBean> iterator3 = eeb.getPayFirstBean().iterator();
		    		 				while(iterator3.hasNext()) {
		    		 				PayFirstBean pfb = iterator3.next();
			    		 				if(pfb.getExpenseDetailNo() == payfirstNo) {
			    		 					eeb.getPayFirstBean().remove(pfb);
			    		 					break;
			    		 				}
		    		 				}
		    		 				break;
		    		 		}	
		    		 	}
		    		 	break;
		    	 }
	     } 
		
	}
	
	public static List<String> getWhoNotPay(ExpenseBean eb){
		
		List <String> listNameHave = new ArrayList<String>();
		List <String> listNameAll = new ArrayList<String>();
		
		List <PayFirstBean> list_pay = eb.getPayFirstBean();
		
		Iterator<TeammateBean> it = eb.getActivityBean().getTeammateBean().iterator();
		while (it.hasNext()) {
			TeammateBean list_team = it.next();
			listNameAll.add(list_team.getTeammateName());
			
			for (PayFirstBean pfb:list_pay) {
				if(list_team.getTeammateName().equals(pfb.getPayName())) {
					listNameHave.add(list_team.getTeammateName());
				}
			}
		}
		listNameAll.removeAll(listNameHave);
		return listNameAll;
		
	}
	
	public static void setDeletable(ActivityBean ab) {
		List <TeammateBean> teamList = ab.getTeammateBean();
		
		Iterator<TeammateBean> itTB = teamList.iterator();
		while (itTB.hasNext()) {
			TeammateBean tb = itTB.next();
			
			List<ExpenseBean> expList = ab.getExpenseBean();
			Iterator<ExpenseBean> itEB = expList.iterator();
			while(itEB.hasNext()) {
				ExpenseBean eb = itEB.next();
				
				List<PayFirstBean> pfbList = eb.getPayFirstBean();
				Iterator<PayFirstBean> itPFB = pfbList.iterator();
				while(itPFB.hasNext()) {
					PayFirstBean pfb = itPFB.next();
					if(tb.getTeammateName() == pfb.getPayName()) {
						tb.setDeletable(true);
						break;
					}
					
				}
				break;
			}
			break;
		}
		
	}
	
	
}
