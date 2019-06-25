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
public class MemberBean implements Serializable {
	private static final long serialVersionUID = 1L;	
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long memberNo;
	private String email;
	private String password;
	private String name;
	private String phone;
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@Fetch(value=FetchMode.SUBSELECT)
	@JoinColumn
    private List<ActivityBean> activityBean = new ArrayList<>();
    
    @OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
    @Fetch(value=FetchMode.SUBSELECT)
    @JoinColumn
    private List<FriendBean> friendBean = new ArrayList<>();
    
    
    public List<FriendBean> getFriendBean() {
		return friendBean;
	}

	public void setFriendBean(List<FriendBean> friendBean) {
		this.friendBean = friendBean;
	}
    
	public long getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(long memberNo) {
		this.memberNo = memberNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public List<ActivityBean> getActivityBean() {
		return activityBean;
	}

	public void setActivityBean(List<ActivityBean> activityBean) {
		this.activityBean = activityBean;
	}
	
	
	//自己的建構子
	public MemberBean() {
		
	}

	public MemberBean(String email, String password, String name, String phone) {
		this.email = email;
		this.password = password;
		this.name = name;
		this.phone = phone;
	}

	public MemberBean(long memberNo, String email, String password, String name, String phone) {

		this.memberNo = memberNo;
		this.email = email;
		this.password = password;
		this.name = name;
		this.phone = phone;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((activityBean == null) ? 0 : activityBean.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((friendBean == null) ? 0 : friendBean.hashCode());
		result = prime * result + (int) (memberNo ^ (memberNo >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
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
		MemberBean other = (MemberBean) obj;
		if (activityBean == null) {
			if (other.activityBean != null)
				return false;
		} else if (!activityBean.equals(other.activityBean))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (friendBean == null) {
			if (other.friendBean != null)
				return false;
		} else if (!friendBean.equals(other.friendBean))
			return false;
		if (memberNo != other.memberNo)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		return true;
	}
}