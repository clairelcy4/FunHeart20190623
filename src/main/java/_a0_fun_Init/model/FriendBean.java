package _a0_fun_Init.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
 
@Entity
public class FriendBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long friendNo;
    private String friendName; 
    private String friendPhone;
    private String friendOtherInfo;
    
	public long getFriendNo() {
		return friendNo;
	}
	public void setFriendNo(long friendNo) {
		this.friendNo = friendNo;
	}
	public String getFriendName() {
		return friendName;
	}
	public void setFriendName(String friendName) {
		this.friendName = friendName;
	}
	public String getFriendPhone() {
		return friendPhone;
	}
	public void setFriendPhone(String friendPhone) {
		this.friendPhone = friendPhone;
	}
	public String getFriendOtherInfo() {
		return friendOtherInfo;
	}
	public void setFriendOtherInfo(String friendOtherInfo) {
		this.friendOtherInfo = friendOtherInfo;
	}
	
	//建構子
	public FriendBean() {
	
	}
	
	public FriendBean(String friendName, String friendPhone) {
		this.friendName = friendName;
		this.friendPhone = friendPhone;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((friendName == null) ? 0 : friendName.hashCode());
		result = prime * result + (int) (friendNo ^ (friendNo >>> 32));
		result = prime * result + ((friendOtherInfo == null) ? 0 : friendOtherInfo.hashCode());
		result = prime * result + ((friendPhone == null) ? 0 : friendPhone.hashCode());
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
		FriendBean other = (FriendBean) obj;
		if (friendName == null) {
			if (other.friendName != null)
				return false;
		} else if (!friendName.equals(other.friendName))
			return false;
		if (friendNo != other.friendNo)
			return false;
		if (friendOtherInfo == null) {
			if (other.friendOtherInfo != null)
				return false;
		} else if (!friendOtherInfo.equals(other.friendOtherInfo))
			return false;
		if (friendPhone == null) {
			if (other.friendPhone != null)
				return false;
		} else if (!friendPhone.equals(other.friendPhone))
			return false;
		return true;
	}

}
