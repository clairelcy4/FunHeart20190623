package _a0_fun_Init.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import _00_init.util.HibernateUtils;
import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.repository.FunDao;
import _a0_fun_Init.repository.impl.FunDaoImpl_Hibernate;
import _a0_fun_Init.service.FunService;

public class FunServiceImplHibernate implements FunService {
	
    FunDao dao;
    SessionFactory factory;
    
	public FunServiceImplHibernate() {
		this.dao = new FunDaoImpl_Hibernate();
		factory = HibernateUtils.getSessionFactory();
	}

	@Override
	public List<PayFirstBean> queryPayFirstAvg(long activityNo) {
		List <PayFirstBean> list = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			list = dao.queryPayFirstAvg(activityNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return list;
	}

	@Override
	public List<PayFirstBean> queryPayFirstOnMe(long activityNo) {
		List <PayFirstBean> list = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			list = dao.queryPayFirstOnMe(activityNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return list;
	}

	@Override
	public int updateMemberBean(MemberBean mb) {
		int n = 0;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.updateMemberBean(mb);
			tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public long deleteFriend(long friendNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.deleteFriend(friendNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public FriendBean queryFriend(long friendNo) {
		FriendBean bean = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			bean = dao.queryFriend(friendNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return bean;
	}

	@Override
	public long deleteActivity(long activityNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.deleteActivity(activityNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public long deleteTeammate(long teammateNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.deleteTeammate(teammateNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public long deleteExpense(long expenseNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.deleteExpense(expenseNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public List<ExpenseBean> getExpenseList(long activityNo) {
		List <ExpenseBean> list = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			list = dao.getExpenseList(activityNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return list;
	}

	@Override
	public long deletePayFirst(long payfirstNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.deletePayFirst(payfirstNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public List<PayFirstBean> getPayFirstList(long expenseNo) {
		List <PayFirstBean> list = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			list = dao.getPayFirstList(expenseNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return list;
	}

	@Override
	public int updateExpenseBean(ExpenseBean eb) {
		int n = 0;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.updateExpenseBean(eb);
			tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return n;
	}

	@Override
	public boolean idExists(String id) {
		boolean exist = false;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
		    exist = dao.idExists(id);
			tx.commit();
		} catch(Exception ex) {
			if (tx != null) tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		} 
		return exist ;
	}

	@Override
	public int saveMember(MemberBean bean) {
		int n = 0;
		
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			n = dao.saveMember(bean);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return n;
	}

	@Override
	public List<String> getWhoAlreadyPaid(long activityNo) {
		List <String> list = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			list = dao.getWhoAlreadyPaid(activityNo);
		    tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		
		return list;
	}
	
	
}
