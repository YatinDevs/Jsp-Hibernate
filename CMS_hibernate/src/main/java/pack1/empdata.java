package pack1;
import javax.persistence.*;
@Entity
@Table(name="empdata")
public class empdata {
@Id	
String name;
int age ;
String nationality;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getNationality() {
	return nationality;
}
public void setNationality(String nationality) {
	this.nationality = nationality;
}

}
