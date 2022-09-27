<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Book Issued</title>
</head>
<body>
<h2>** Display Book Issued **</h2>
<%
try{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	/* Query q = r.createQuery("from booksissued");
	List<booksissued> l = q.list();
	Iterator i = l.iterator();
	out.println("<table border=2>");
	while(i.hasNext())
	{
		booksissued c = (booksissued)i.next();
		out.println("<tr><td>"+c.getCid());
		out.println("<td>"+c.getIsbn()+"</tr>");
	}
	out.println("</table>"); */
	t.commit();
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>