<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add Book Issued</title>
</head>
<body>
<%
try{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	int ci = Integer.parseInt(request.getParameter("cid"));
	int i1 = Integer.parseInt(request.getParameter("isbn1"));
	int i2 = Integer.parseInt(request.getParameter("isbn2"));
	int i3 = Integer.parseInt(request.getParameter("isbn3"));
	int i4 = Integer.parseInt(request.getParameter("isbn4"));
	int i5 = Integer.parseInt(request.getParameter("isbn5"));
	
	book c1 = new book();
	c1.setIsbn(i1);
	book c2 = new book();
	c2.setIsbn(i2);
	book c3 = new book();
	c3.setIsbn(i3);
	book c4 = new book();
	c4.setIsbn(i4);
	book c5 = new book();
	c5.setIsbn(i5);
	
	member m = new member();
	m.setCid(ci);
	
	Set <book> s1 = new HashSet<book>();
	s1.add(c1);
	s1.add(c2);
	s1.add(c3);
	s1.add(c4);
	s1.add(c5);
	m.setBk(s1);
	r.save(m);
	
	t.commit();
	out.println("Data Inserted");
	RequestDispatcher rd = request.getRequestDispatcher("addBookIssueForm.jsp");
	rd.forward(request, response);
	r.clear();
	r.close();
	sf.close();
} catch(Exception e)
	{	out.println("Error Occured : "+e.getMessage());	}
%>
</body>
</html>