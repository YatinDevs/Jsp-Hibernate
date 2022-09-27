<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Books</title>
</head>
<body>
<h2>** Display Books **</h2>
<%
try{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	Query q = r.createQuery("from book");
	List<book> l = q.list();
	Iterator i = l.iterator();
	out.println("<table border=2>");
	out.println("<tr><th> ISBN <th> Book Name <th> Author Name <th> Price");
	out.println("</tr>");
	while(i.hasNext())
	{
		book c = (book)i.next();
		out.println("<tr><td>"+c.getIsbn());
		out.println("<td>"+c.getBname());
		out.println("<td>"+c.getAname());
		out.println("<td>"+c.getPrice()+"</tr>");
	}
	out.println("</table>");
	t.commit();
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>