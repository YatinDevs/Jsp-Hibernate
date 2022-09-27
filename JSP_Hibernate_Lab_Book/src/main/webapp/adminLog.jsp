<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<%
try
{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	String u1 = request.getParameter("user");
	String p1 = request.getParameter("pass");
	adminLogin c =(adminLogin) r.createQuery("from adminLogin A where A.user= :user")
			.setParameter("user", u1).uniqueResult();
	String p2 = c.getPass(); 
	if(p1.equals(p2))
	{
		out.println("Login Successfull");
		RequestDispatcher rd = request.getRequestDispatcher("adminDashboard.jsp");
		rd.forward(request, response);
	}
	else
	{
		response.sendRedirect("adminLogin.jsp");
	}
	t.commit();
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>