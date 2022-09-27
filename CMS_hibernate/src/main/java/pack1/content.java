package pack1;

import javax.persistence.*;

 //model //pojo
@Entity
@Table(name="content")
public class content 
{
    @Id
	int cid;
    @Column(name="cname") 
	String cname;
    @Column(name="description") 
    String description;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
