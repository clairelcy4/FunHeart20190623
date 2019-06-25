package _a0_fun_Init.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
 
@Entity
public class PayFirstBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private long expenseDetailNo;
    private Double payFirst;
    private String payName;
    
    @ManyToOne
    @JoinColumn
    private ExpenseBean expenseBean;

	public long getExpenseDetailNo() {
		return expenseDetailNo;
	}

	public void setExpenseDetailNo(long expenseDetailNo) {
		this.expenseDetailNo = expenseDetailNo;
	}

	public Double getPayFirst() {
		return payFirst;
	}

	public void setPayFirst(Double payFirst) {
		this.payFirst = payFirst;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}
    
	//自己的建構子
	public PayFirstBean() {
		
	}

	public PayFirstBean(Double payFirst, String payName) {
		this.payFirst = payFirst;
		this.payName = payName;
	}

	public PayFirstBean(long expenseDetailNo, Double payFirst, String payName) {
		this.expenseDetailNo = expenseDetailNo;
		this.payFirst = payFirst;
		this.payName = payName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (expenseDetailNo ^ (expenseDetailNo >>> 32));
		result = prime * result + ((payFirst == null) ? 0 : payFirst.hashCode());
		result = prime * result + ((payName == null) ? 0 : payName.hashCode());
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
		PayFirstBean other = (PayFirstBean) obj;
		if (expenseDetailNo != other.expenseDetailNo)
			return false;
		if (payFirst == null) {
			if (other.payFirst != null)
				return false;
		} else if (!payFirst.equals(other.payFirst))
			return false;
		if (payName == null) {
			if (other.payName != null)
				return false;
		} else if (!payName.equals(other.payName))
			return false;
		return true;
	}

	public ExpenseBean getExpenseBean() {
		return expenseBean;
	}

	public void setExpenseBean(ExpenseBean expenseBean) {
		this.expenseBean = expenseBean;
	}
	
	
	
}
