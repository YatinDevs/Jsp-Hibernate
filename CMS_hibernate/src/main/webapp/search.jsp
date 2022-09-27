<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack1.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--  view particular data from database -->
<%
try{
//load hibernate.cfg.xml
SessionFactory sf=new Configuration().configure().buildSessionFactory();
 
Session r=sf.openSession();

content u = r.get(content.class, 2);

out.println(u.getCid());
out.println(u.getCname());
out.println(u.getDescription());


empdata t=r.get(empdata.class,"neha");
out.println(t.getName()+"  "+t.getAge() +"  "+ t.getNationality());

 
}catch(Exception f){
	out.println(f.getMessage());
}
%>
</body>
</html>
 