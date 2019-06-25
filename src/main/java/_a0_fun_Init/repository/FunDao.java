package _a0_fun_Init.repository;

import java.util.List;

import _a0_fun_Init.model.ExpenseBean;
import _a0_fun_Init.model.FriendBean;
import _a0_fun_Init.model.MemberBean;
import _a0_fun_Init.model.PayFirstBean;

public interface FunDao {
	List<PayFirstBean> queryPayFirstAvg(long activityNo);
	List<PayFirstBean> queryPayFirstOnMe(long activityNo);
	int updateMemberBean(MemberBean mb);
	
	long deleteFriend(long friendNo);
	FriendBean queryFriend(long friendNo);
	
	long deleteActivity(long activityNo);
	
	long deleteTeammate(long teammateNo);
	long deleteExpense(long expenseNo);
	
	List<ExpenseBean> getExpenseList(long activityNo);
	
	long deletePayFirst(long payfirstNo);
	
	List<PayFirstBean> getPayFirstList(long expenseNo);
	int updateExpenseBean(ExpenseBean eb);
	
	public MemberBean checkIDPassword(String userId, String password);
	boolean idExists(String id);
	int saveMember(MemberBean bean);

	
	List<String> getWhoAlreadyPaid(long activityNo);
}