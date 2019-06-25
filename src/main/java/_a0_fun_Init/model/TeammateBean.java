package _a0_fun_Init.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
 
@Entity
public class TeammateBean implements Serializable {
	private static final long serialVersionUID = 1L;
    
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long teammateNo;
	private String teammateName;
	private String teammatePhone;
	
	@Transient
	private boolean deletable;
	
	public Long getTeammateNo() {
		return teammateNo;
	}
	public void setTeammateNo(Long teammateNo) {
		this.teammateNo = teammateNo;
	}
	public String getTeammateName() {
		return teammateName;
	}
	public void setTeammateName(String teammateName) {
		this.teammateName = teammateName;
	}
	public String getTeammatePhone() {
		return teammatePhone;
	}
	public void setTeammatePhone(String teammatePhone) {
		this.teammatePhone = teammatePhone;
	}
	
	//建構子
	public TeammateBean() {
	
	}
	
	public TeammateBean(String teammateName, String teammatePhone) {
		
		this.teammateName = teammateName;
		this.teammatePhone = teammatePhone;
	}
	
	public TeammateBean(Long teammateNo, String teammateName, String teammatePhone) {
		
		this.teammateNo = teammateNo;
		this.teammateName = teammateName;
		this.teammatePhone = teammatePhone;
	}
	
	public TeammateBean(String teammateName, String teammatePhone, boolean deletable) {

		this.teammateName = teammateName;
		this.teammatePhone = teammatePhone;
		this.deletable = deletable;
	}
	
	public boolean isDeletable() {
		return deletable;
	}
	public void setDeletable(boolean deletable) {
		this.deletable = deletable;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((teammateName == null) ? 0 : teammateName.hashCode());
		result = prime * result + ((teammateNo == null) ? 0 : teammateNo.hashCode());
		result = prime * result + ((teammatePhone == null) ? 0 : teammatePhone.hashCode());
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
		TeammateBean other = (TeammateBean) obj;
		if (teammateName == null) {
			if (other.teammateName != null)
				return false;
		} else if (!teammateName.equals(other.teammateName))
			return false;
		if (teammateNo == null) {
			if (other.teammateNo != null)
				return false;
		} else if (!teammateNo.equals(other.teammateNo))
			return false;
		if (teammatePhone == null) {
			if (other.teammatePhone != null)
				return false;
		} else if (!teammatePhone.equals(other.teammatePhone))
			return false;
		return true;
	}
}
