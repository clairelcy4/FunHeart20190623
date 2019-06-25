package _a0_fun_Init.repository.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import _00_init.util.HibernateUtils;
import _a0_fun_Init.model.ActivityBean;
import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;
import _a0_fun_Init.model.TeammateBean;
import _a0_fun_Init.repository.FunDao;

public class FunDaoImpl_Hibernate implements Serializable, FunDao {
	private static final long serialVersionUID = 1L;

	SessionFactory factory;

	public FunDaoImpl_Hibernate() {
		factory = HibernateUtils.getSessionFactory();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PayFirstBean> queryPayFirstAvg(long activityNo) {
		
		Session session = factory.getCurrentSession();
		List<PayFirstBean> list = new ArrayList<PayFirstBean>();

		String hql = "FROM PayFirstBean a WHERE "
				+ "a.expenseBean.activityBean.activityNo = :activityNo "
				+ "and a.expenseBean.splitType = :splitType";
		
		list = session.createQuery(hql)
					  .setParameter("activityNo",activityNo)
					  .setParameter("splitType","平分")
					  .list();
		return list;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PayFirstBean> queryPayFirstOnMe(long activityNo) {
		Session session = factory.getCurrentSession();
		List<PayFirstBean> list = new ArrayList<PayFirstBean>();

		String hql = "FROM PayFirstBean a WHERE "
				+ "a.expenseBean.activityBean.activityNo = :activityNo "
				+ "and a.expenseBean.splitType = :splitType";
		
		list = session.createQuery(hql)
					  .setParameter("activityNo",activityNo)
					  .setParameter("splitType","請客")
					  .list();
		return list;
	}

	@Override
	public int updateMemberBean(MemberBean mb) {
		int n = 0;
		Session session = factory.getCurrentSession();
		session.update(mb);
		n++;
		return n;	
	}

	public long deleteFriend(long friendNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		
		FriendBean bb = session.get(FriendBean.class, friendNo);
		session.delete(bb);
		
		n++;
		return n;
	}

	@Override
	public FriendBean queryFriend(long friendNo) {
		FriendBean bean = null;
		Session session = factory.getCurrentSession();
		bean = session.get(FriendBean.class, friendNo);
		
		return bean;
	}

	@Override
	public long deleteActivity(long activityNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		
		ActivityBean bb = session.get(ActivityBean.class, activityNo);
		session.delete(bb);
		
		n++;
		return n;
	}

	@Override
	public long deleteTeammate(long teammateNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();
		
		TeammateBean bb = session.get(TeammateBean.class, teammateNo);
		session.delete(bb);
		
		n++;
		return n;
	}

	@Override
	public long deleteExpense(long expenseNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();	
		
		ExpenseBean bb = session.get(ExpenseBean.class, expenseNo);
		session.delete(bb);
		
		n++;
		return n;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ExpenseBean> getExpenseList(long activityNo) {
		Session session = factory.getCurrentSession();
		List<ExpenseBean> list = new ArrayList<ExpenseBean>();

		String hql = "FROM ExpenseBean a WHERE "
				+ "a.activityBean.activityNo = :activityNo ";
		
		list = session.createQuery(hql)
					  .setParameter("activityNo",activityNo)
					  .list();
		return list;
	}

	@Override
	public long deletePayFirst(long payfirstNo) {
		long n = 0L;
		Session session = factory.getCurrentSession();	
		
		PayFirstBean bb = session.get(PayFirstBean.class, payfirstNo);
		session.delete(bb);
		
		n++;
		return n;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PayFirstBean> getPayFirstList(long expenseNo) {
		Session session = factory.getCurrentSession();
		List<PayFirstBean> list = new ArrayList<PayFirstBean>();

		String hql = "FROM PayFirstBean a WHERE "
				+ "a.expenseBean.expenseNo = :expsenseNo ";
		
		list = session.createQuery(hql)
					  .setParameter("expsenseNo",expenseNo)
					  .list();
		return list;
	}

	@Override
	public int updateExpenseBean(ExpenseBean eb) {
		int n = 0;
		Session session = factory.getCurrentSession();
		session.update(eb);
		n++;
		return n;
	}

	@Override
	public boolean idExists(String id) {
		Session session = factory.getCurrentSession();
		boolean exist = false;
		String hql = "FROM MemberBean WHERE email = :email";
		try {
			MemberBean ob = (MemberBean) session.createQuery(hql)
												.setParameter("email", id)
												.uniqueResult();
			if (ob != null) {
				exist = true;
			}
			
		} catch (NoResultException ex) {
			exist = false;
		} catch (NonUniqueResultException ex) {
			exist = true;
		}
		
		return exist;
	}

	@Override
	public int saveMember(MemberBean bean) {
		int n = 0;
		Session session = factory.getCurrentSession();	
		session.save(bean);
		long a = bean.getMemberNo();	
		System.out.println("產生第"+a+"號會員 : 個人資料Bean");

		n++;
		return n;
	}

	@Override
	public MemberBean checkIDPassword(String userId, String password) {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean WHERE email = :mid and password = :pswd";
		try {
			mb = (MemberBean) session.createQuery(hql)
							.setParameter("mid", userId)
							.setParameter("pswd", password)
							.uniqueResult();
		} catch (NoResultException ex) {
			mb = null;
		}
		return mb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> getWhoAlreadyPaid(long activityNo) {
		Session session = factory.getCurrentSession();
		
		List<String> list = new ArrayList<String>();

		String hql = "Select distinct payName FROM PayFirstBean p Where "
				+ "p.expenseBean.activityBean.activityNo = :activityNo ";
		
		list = session.createQuery(hql)
					  .setParameter("activityNo",activityNo)
					  .list();
		
		return list;
	}
	
}