package _a2_payBack.model;

public class PayBalanceBean implements Comparable<PayBalanceBean> {
 
    private String payName;
    private Double balanceBefore;
    private Double balanceAfter;
    private String payMethod;
    
    private Double total;
    private Double avg;
    
	public Double getBalanceAfter() {
		return balanceAfter;
	}

	public void setBalanceAfter(Double balanceAfter) {
		this.balanceAfter = Double.valueOf((int)((Math.round(balanceAfter*10.0))/10.0));
	}

	public String getPayName() {
		return payName;
	}
	
	public void setPayName(String payName) {
		this.payName = payName;
	}
	
	public String getPayMethod() {
		return payMethod;
	}
	
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Double getAvg() {
		return avg;
	}

	public void setAvg(Double avg) {
		this.avg = avg;
	}

	public Double getBalanceBefore() {
		return balanceBefore;
	}

	public void setBalanceBefore(Double balanceBefore) {
		this.balanceBefore = balanceBefore;
	}

	@Override
	public int compareTo(PayBalanceBean o) {
		return (int) (this.getBalanceAfter() - o.getBalanceAfter());
	}

	public PayBalanceBean() {
	
	}

	public PayBalanceBean(String payName, Double balanceAfter) {

		this.payName = payName;
		this.balanceAfter = balanceAfter;
	}
  
}
