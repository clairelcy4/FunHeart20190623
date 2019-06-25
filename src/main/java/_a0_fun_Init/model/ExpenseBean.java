package _a0_fun_Init.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
 
@Entity
public class ExpenseBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long expenseNo;
	
    private String expenseName;   
    private Double expenseTotal; 
    private String splitType;
    
    @ManyToOne
    @JoinColumn
    private ActivityBean activityBean;
    
    @OneToMany(mappedBy="expenseBean",cascade=CascadeType.ALL)
    private List<PayFirstBean> payFirstBean = new ArrayList<>();

	public long getExpenseNo() {
		return expenseNo;
	}

	public void setExpenseNo(long expenseNo) {
		this.expenseNo = expenseNo;
	}

	public String getExpenseName() {
		return expenseName;
	}

	public void setExpenseName(String expenseName) {
		this.expenseName = expenseName;
	}

	public Double getExpenseTotal() {
		return expenseTotal;
	}

	public void setExpenseTotal(Double expenseTotal) {
		this.expenseTotal = expenseTotal;
	}

	public String getSplitType() {
		return splitType;
	}

	public void setSplitType(String splitType) {
		this.splitType = splitType;
	}


	public List<PayFirstBean> getPayFirstBean() {
		return payFirstBean;
	}

	public void setPayFirstBean(List<PayFirstBean> payFirstBean) {
		this.payFirstBean = payFirstBean;
	}

	//自己的建構子
	public ExpenseBean() {
		
	}

	public ExpenseBean(String expenseName, String splitType) {
		this.expenseName = expenseName;
		this.splitType = splitType;
	}

	public ExpenseBean(String expenseName, Double expenseTotal) {
		
		this.expenseName = expenseName;
		this.expenseTotal = expenseTotal;
	}

	public ExpenseBean(String expenseName, Double expenseTotal, String splitType) {
		
		this.expenseName = expenseName;
		this.expenseTotal = expenseTotal;
		this.splitType = splitType;
	}

	public ExpenseBean(long expenseNo, String expenseName, Double expenseTotal, String splitType) {
		
		this.expenseNo = expenseNo;
		this.expenseName = expenseName;
		this.expenseTotal = expenseTotal;
		this.splitType = splitType;
	}

	public ActivityBean getActivityBean() {
		return activityBean;
	}

	public void setActivityBean(ActivityBean activityBean) {
		this.activityBean = activityBean;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((activityBean == null) ? 0 : activityBean.hashCode());
		result = prime * result + ((expenseName == null) ? 0 : expenseName.hashCode());
		result = prime * result + (int) (expenseNo ^ (expenseNo >>> 32));
		result = prime * result + ((expenseTotal == null) ? 0 : expenseTotal.hashCode());
		result = prime * result + ((payFirstBean == null) ? 0 : payFirstBean.hashCode());
		result = prime * result + ((splitType == null) ? 0 : splitType.hashCode());
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
		ExpenseBean other = (ExpenseBean) obj;
		if (activityBean == null) {
			if (other.activityBean != null)
				return false;
		} else if (!activityBean.equals(other.activityBean))
			return false;
		if (expenseName == null) {
			if (other.expenseName != null)
				return false;
		} else if (!expenseName.equals(other.expenseName))
			return false;
		if (expenseNo != other.expenseNo)
			return false;
		if (expenseTotal == null) {
			if (other.expenseTotal != null)
				return false;
		} else if (!expenseTotal.equals(other.expenseTotal))
			return false;
		if (payFirstBean == null) {
			if (other.payFirstBean != null)
				return false;
		} else if (!payFirstBean.equals(other.payFirstBean))
			return false;
		if (splitType == null) {
			if (other.splitType != null)
				return false;
		} else if (!splitType.equals(other.splitType))
			return false;
		return true;
	}

	
		
}
