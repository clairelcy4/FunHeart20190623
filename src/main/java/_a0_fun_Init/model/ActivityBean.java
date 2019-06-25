package _a0_fun_Init.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
 
@Entity
public class ActivityBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private long activityNo;
	
    private String activityName;
	
	@OneToMany(mappedBy="activityBean",cascade=CascadeType.ALL)
    private List<ExpenseBean> expenseBean = new ArrayList<>();
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@Fetch(value=FetchMode.SUBSELECT)
	@JoinColumn
    private List<TeammateBean> teammateBean = new ArrayList<>();
	
	
	public long getActivityNo() {
		return activityNo;
	}

	public void setActivityNo(long activityNo) {
		this.activityNo = activityNo;
	}
	
	
	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	
	public List<TeammateBean> getTeammateBean() {
		return teammateBean;
	}
	public void setTeammateBean(List<TeammateBean> teammateBean) {
		this.teammateBean = teammateBean;
	}
	
	public List<ExpenseBean> getExpenseBean() {
		return expenseBean;
	}
	public void setExpenseBean(List<ExpenseBean> expenseBean) {
		this.expenseBean = expenseBean;
	}
	
	//自己的建構子
	public ActivityBean() {
		
	}
	
	public ActivityBean(String activityName) {
		this.activityName = activityName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((activityName == null) ? 0 : activityName.hashCode());
		result = prime * result + (int) (activityNo ^ (activityNo >>> 32));
		result = prime * result + ((expenseBean == null) ? 0 : expenseBean.hashCode());
		result = prime * result + ((teammateBean == null) ? 0 : teammateBean.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ActivityBean other = (ActivityBean) obj;
		if (activityName == null) {
			if (other.activityName != null)
				return false;
		} else if (!activityName.equals(other.activityName))
			return false;
		if (activityNo != other.activityNo)
			return false;
		if (expenseBean == null) {
			if (other.expenseBean != null)
				return false;
		} else if (!expenseBean.equals(other.expenseBean))
			return false;
		if (teammateBean == null) {
			if (other.teammateBean != null)
				return false;
		} else if (!teammateBean.equals(other.teammateBean))
			return false;
		return true;
	}

	
}
