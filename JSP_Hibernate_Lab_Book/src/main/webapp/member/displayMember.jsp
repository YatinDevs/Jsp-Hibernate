<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Members</title>
</head>
<body>
<h2>** Display Members **</h2>
<%
try{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	Query q = r.createQuery("from member");
	List<member> l = q.list();
	Iterator i = l.iterator();
	out.println("<table border=2>");
	out.println("<tr><th> CID <th> Member Name <th> Address <th> Phone");
	out.println("</tr>");
	while(i.hasNext())
	{
		member c = (member)i.next();
		out.println("<tr><td>"+c.getCid());
		out.println("<td>"+c.getMname());
		out.println("<td>"+c.getAddress());
		out.println("<td>"+c.getPhone()+"</tr>");
	}
	out.println("</table>");
	t.commit();
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>