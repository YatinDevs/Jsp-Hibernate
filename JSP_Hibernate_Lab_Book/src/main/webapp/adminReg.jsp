<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Registration</title>
</head>
<body>
<%
try
{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	String u = request.getParameter("user");
	String p = request.getParameter("pass");
	adminLogin c = new adminLogin();
	c.setUser(u);
	c.setPass(p);
	r.save(c);
	t.commit();
	out.println("Data Inserted");
	RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
	rd.forward(request, response);
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>