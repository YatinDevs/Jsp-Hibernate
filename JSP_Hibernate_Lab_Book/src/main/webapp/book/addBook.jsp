<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book Data</title>
</head>
<body>
<%
try{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	int i = Integer.parseInt(request.getParameter("isbn"));
	String b = request.getParameter("bname");
	String a = request.getParameter("aname");
	int p = Integer.parseInt(request.getParameter("price"));
	book c = new book();
	c.setIsbn(i);
	c.setAname(a);
	c.setBname(b);
	c.setPrice(p);
	r.save(c);
	t.commit();
	out.println("Data Inserted");
	RequestDispatcher rd = request.getRequestDispatcher("addBookForm.jsp");
	rd.forward(request, response);
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>