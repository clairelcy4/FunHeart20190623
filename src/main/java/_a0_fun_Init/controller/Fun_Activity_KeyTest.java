package _a0_fun_Init.controller;


import java.util.ArrayList;
import java.util.List;

/*  
    程式說明：建立表格與設定初始測試資料。
    表格包括：Book, BookCompany, Member, Orders, OrderItems
 
*/


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import _00_init.util.HibernateUtils;

public class Fun_Activity_KeyTest {
	public static final String UTF8_BOM = "\uFEFF"; // 定義 UTF-8的BOM字元


	@SuppressWarnings("unchecked")
	public static void main(String args[]) {

		SessionFactory factory = HibernateUtils.getSessionFactory();
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();
			
			List<String> list2 = new ArrayList<String>();

			String hql2 = "Select distinct payName FROM PayFirstBean p Where "
					+ "p.expenseBean.activityBean.activityNo = :activityNo ";
			
			list2 = session.createQuery(hql2)
						  .setParameter("activityNo",1L)
						  .list();
			
			System.out.println(list2);
			
			
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