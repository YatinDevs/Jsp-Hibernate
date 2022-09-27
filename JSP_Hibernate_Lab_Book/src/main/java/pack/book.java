package pack;

import java.util.*;
import javax.persistence.*;

@Entity
@Table
public class book
{
	@Id
	int isbn;
	String bname;
	String aname;
	int price;
	@ManyToMany
	@JoinTable(name="booksissued")
	Set<member> m = new HashSet();
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Set<member> getM() {
		return m;
	}
	public void setM(Set<member> m) {
		this.m = m;
	}
}