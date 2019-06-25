package _02_login.service.impl;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import _00_init.util.HibernateUtils;
import _02_login.service.LoginService;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.repository.FunDao;
import _a0_fun_Init.repository.impl.FunDaoImpl_Hibernate;


// 登入時系統必須執行的checkIDPassword()功能交由 MemberDao來完成 
public class LoginServiceImpl implements LoginService {
	
//	OssanDao  dao ;
	FunDao dao;
	
	SessionFactory factory;
	public LoginServiceImpl() {
		
//		dao = new OssanDaoImpl_Hibernate();
		dao = new FunDaoImpl_Hibernate();
		factory = HibernateUtils.getSessionFactory();
	}	
	public MemberBean checkIDPassword(String userId, String password) {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			mb = dao.checkIDPassword(userId, password);
		    tx.commit();
		} catch(Exception ex) {
			if (tx != null) tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		} 
		return mb;
	}
}
