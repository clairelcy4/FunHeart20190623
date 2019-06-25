package _a0_fun_Init.controller;

/*  
    程式說明：建立表格與設定初始測試資料。
    表格包括：Book, BookCompany, Member, Orders, OrderItems
 
*/


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import _00_init.util.GlobalService;
import _00_init.util.HibernateUtils;
import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.model.TeammateBean;

public class Fun_Activity_New {
	public static final String UTF8_BOM = "\uFEFF"; // 定義 UTF-8的BOM字元

	public static void main(String args[]) {

		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();
			
			ActivityBean activity1 = new ActivityBean("慶功沖繩五日遊");
			ActivityBean activity2 = new ActivityBean("討伐惡鬼之旅");
//			ActivityBean activity1 = new ActivityBean("討伐惡鬼之旅");
			
			
	        TeammateBean mateA1 = new TeammateBean("白狗","08070724953");
	        TeammateBean mateA2 = new TeammateBean("猴子","09098798625");
	        TeammateBean mateA3 = new TeammateBean("雉雞","02035865641");
	        
//	        TeammateBean mateA1 = new TeammateBean("桃太郎","06093126522");
//	        TeammateBean mateA2 = new TeammateBean("白狗","08070724953");
//	        TeammateBean mateA3 = new TeammateBean("猴子","09098798625");
//	        TeammateBean mateA4 = new TeammateBean("雉雞","02035865641");
	        TeammateBean mateA4 = new TeammateBean("桃太郎","06093126522");
	        TeammateBean mateA5 = new TeammateBean("白狗","08070724953");
	        TeammateBean mateA6 = new TeammateBean("猴子","09098798625");
	        TeammateBean mateA7 = new TeammateBean("雉雞","02035865641");
	        
	        //活動1加入成員(單向)
//	    
	        activity1.getTeammateBean().add(mateA1);
	        activity1.getTeammateBean().add(mateA2);
	        activity1.getTeammateBean().add(mateA3);
//	        activity1.getTeammateBean().add(mateA4);   
           
	        //活動2加入成員(單向)
	 
//	        activity1.getTeammateBean().add(mateA1);
//	        activity1.getTeammateBean().add(mateA2);
//	        activity1.getTeammateBean().add(mateA3);
//	        activity1.getTeammateBean().add(mateA4);  
	        activity2.getTeammateBean().add(mateA4);
	        activity2.getTeammateBean().add(mateA5);
	        activity2.getTeammateBean().add(mateA6);
	        activity2.getTeammateBean().add(mateA7);  
	        
	        //建立 單筆花費
	        ExpenseBean expense_11 = new ExpenseBean("北部巴士一日遊",20000.0,"平分");
	        ExpenseBean expense_12 = new ExpenseBean("暖暮拉麵",4200.0,"請客");
	        ExpenseBean expense_13 = new ExpenseBean("小祿光之居",6300.0,"平分");
//	        
	        ExpenseBean expense_21 = new ExpenseBean("船票",4800.0,"平分");
	        ExpenseBean expense_22 = new ExpenseBean("高級壽司",36700.0,"請客");
	        ExpenseBean expense_23 = new ExpenseBean("青年旅舍",5600.0,"平分");
	        
//	        ExpenseBean expense_11 = new ExpenseBean("船票",4800.0,"平分");
//	        ExpenseBean expense_12 = new ExpenseBean("高級壽司",36700.0,"請客");
//	        ExpenseBean expense_13 = new ExpenseBean("青年旅舍",5600.0,"平分");
	        
	       
	        //建立 先付費用
	        PayFirstBean payFirst_11A = new PayFirstBean(20000.0,"桃太郎");
	        PayFirstBean payFirst_12A = new PayFirstBean(4000.0,"臺灣喔熊");
	        PayFirstBean payFirst_12B = new PayFirstBean(200.0,"雉雞");
	        PayFirstBean payFirst_13A = new PayFirstBean(6300.0,"白狗");
	        
	        PayFirstBean payFirst_21A = new PayFirstBean(4800.0,"桃太郎");
	        PayFirstBean payFirst_22A = new PayFirstBean(36000.0,"桃太郎");
	        PayFirstBean payFirst_22B = new PayFirstBean(700.0,"白狗");
	        PayFirstBean payFirst_23A = new PayFirstBean(5600.0,"猴子");
//	        PayFirstBean payFirst_11A = new PayFirstBean(4800.0,"桃太郎");
//	        PayFirstBean payFirst_12A = new PayFirstBean(36000.0,"桃太郎");
//	        PayFirstBean payFirst_12B = new PayFirstBean(700.0,"白狗");
//	        PayFirstBean payFirst_13A = new PayFirstBean(5600.0,"猴子");
	        
	        
	        
	        
	        //先付款項放入 -- 第一個活動的第一個Expense(雙向)
	        expense_11.getPayFirstBean().add(payFirst_11A);
	        payFirst_11A.setExpenseBean(expense_11);
	        
	        
	        //先付款項放入 -- 第一個活動的第二個Expense(雙向)	
	        
	        expense_12.getPayFirstBean().add(payFirst_12A);
	        expense_12.getPayFirstBean().add(payFirst_12B);
	        
	        payFirst_12A.setExpenseBean(expense_12);
	        payFirst_12B.setExpenseBean(expense_12);
	        
	        //先付款項放入 -- 第一個活動的第三個Expense(雙向)
	        
	        expense_13.getPayFirstBean().add(payFirst_13A);
	        payFirst_13A.setExpenseBean(expense_13);
	        
	        //先付款項放入 -- 第二個活動的第一個Expense
	        
	        expense_21.getPayFirstBean().add(payFirst_21A);
	        payFirst_21A.setExpenseBean(expense_21);
	        
	        //先付款項放入 -- 第二個活動的第二個Expense
	        
	        expense_22.getPayFirstBean().add(payFirst_22A);
	        expense_22.getPayFirstBean().add(payFirst_22B);
//	        
	        payFirst_22A.setExpenseBean(expense_22);
	        payFirst_22B.setExpenseBean(expense_22);
	        
	    	//先付款項放入 -- 第二個活動的第三個Expense
	      
	        expense_23.getPayFirstBean().add(payFirst_23A);
	        payFirst_23A.setExpenseBean(expense_23);	        
	        
	        //指定Expense的外鍵(雙向)
	        expense_11.setActivityBean(activity1);
	        expense_12.setActivityBean(activity1);
	        expense_13.setActivityBean(activity1);
//	        
	        expense_21.setActivityBean(activity2);
	        expense_22.setActivityBean(activity2);
	        expense_23.setActivityBean(activity2);	        
//	        
	        //指定Expense放入活動中(雙向)
        
	        activity1.getExpenseBean().add(expense_11);
	        activity1.getExpenseBean().add(expense_12);
	        activity1.getExpenseBean().add(expense_13);

	        activity2.getExpenseBean().add(expense_21);
	        activity2.getExpenseBean().add(expense_22);
	        activity2.getExpenseBean().add(expense_23);  
	        
	        //建立會員
	        String password = GlobalService.getMD5Endocing(GlobalService.encryptString("Sh!ro1nu"));
	        MemberBean mb = new MemberBean("shiroinu011@gmail.com",password,"白狗","08070724953");
	               
	        FriendBean mate1 = new FriendBean("桃太郎","0912820373");
	        FriendBean mate2 = new FriendBean("猴子","09098798625");
	        FriendBean mate3 = new FriendBean("雉雞","02035865641");
	        FriendBean mate4 = new FriendBean("阿柴","09097701097");
	        FriendBean mate5 = new FriendBean("可樂","07369920112");
	        FriendBean mate6 = new FriendBean("波奇","07014725593");
	        FriendBean mate7 = new FriendBean("摩卡","05033221286");
	        FriendBean mate8 = new FriendBean("桃子","02089945639");

	        //所有人變成一個人的朋友
	        mb.getFriendBean().add(mate1);
	        mb.getFriendBean().add(mate2);
	        mb.getFriendBean().add(mate3);
	        mb.getFriendBean().add(mate4);
	        mb.getFriendBean().add(mate5);
	        mb.getFriendBean().add(mate6);
	        mb.getFriendBean().add(mate7);
	        mb.getFriendBean().add(mate8);
	        
	        //把活動掛到會員上
	        mb.getActivityBean().add(activity1);
	        mb.getActivityBean().add(activity2);       
	        
	        //儲存
	        session.save(mb);
	

			session.flush();
            tx.commit();
		} catch (Exception e) {
			System.err.println("新建表格時發生例外: " + e.getMessage());
			e.printStackTrace();
			tx.rollback();
		} 
        factory.close();
	}

}