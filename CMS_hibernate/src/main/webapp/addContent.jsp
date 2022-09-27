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

<!-- application --- persistant api -- particular sql -- database -->
try{
//load hibernate.cfg.xml
SessionFactory sf=new Configuration().configure().buildSessionFactory();
 
Session r=sf.openSession();
Transaction t= r.beginTransaction();

content c= new  content();
int y= Integer.parseInt(request.getParameter("cid"));
c.setCid(y);
c.setCname(request.getParameter("cname"));
c.setDescription(request.getParameter("desc"));
r.save(c);// write insert query
t.commit();
 
out.println(" data inserted ");
}catch(Exception f){
	out.println(f.getMessage());
}
%>
</body>
</html>
 