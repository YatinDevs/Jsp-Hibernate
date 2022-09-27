<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
try
{
	int i = Integer.parseInt(request.getParameter("isbn"));
	Query q = r.createQuery("delete from book where isbn= :isbn");
	q.setInteger("isbn", i);
    int row = q.executeUpdate();
    out.println("Rows affected: " + row);
    RequestDispatcher rd = request.getRequestDispatcher("displayBook.jsp");
	rd.forward(request, response);
	out.println("record delete");
	t.commit();
} catch(Exception e){		
	t.rollback();
	out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>