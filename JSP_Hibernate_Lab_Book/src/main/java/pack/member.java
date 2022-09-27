package pack;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table
public class member
{
	@Id
	int cid;
	String mname;
	String address;
	@ManyToMany(mappedBy="m")
	Set<book> bk = new HashSet();
	int phone;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public Set<book> getBk() {
		return bk;
	}
	public void setBk(Set<book> bk) {
		this.bk = bk;
	}
	
}