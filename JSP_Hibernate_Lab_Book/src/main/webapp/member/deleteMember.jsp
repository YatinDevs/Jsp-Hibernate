<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Member</title>
</head>
<body>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
try
{
	int i = Integer.parseInt(request.getParameter("cid"));
	Query q = r.createQuery("delete from member where cid= :cid");
	q.setInteger("cid", i);
    int row = q.executeUpdate();
    out.println("Rows affected: " + row);
	t.commit();
	RequestDispatcher rd = request.getRequestDispatcher("displayMember.jsp");
	rd.forward(request, response);
} catch(Exception e){		
	t.rollback();
	out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>