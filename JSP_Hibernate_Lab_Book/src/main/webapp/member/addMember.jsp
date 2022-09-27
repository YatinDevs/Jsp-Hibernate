<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,org.hibernate.cfg.*,pack.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Member</title>
</head>
<body>
<%
try{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session r = sf.openSession();
	Transaction t = r.beginTransaction();
	int i = Integer.parseInt(request.getParameter("cid"));
	String b = request.getParameter("mname");
	String a = request.getParameter("address");
	int p = Integer.parseInt(request.getParameter("phone"));
	member c = new member();
	c.setCid(i);
	c.setMname(b);
	c.setAddress(a);
	c.setPhone(p);
	r.save(c);
	t.commit();
	out.println("Data Inserted");
	RequestDispatcher rd = request.getRequestDispatcher("addMemberForm.jsp");
	rd.forward(request, response);
} catch(Exception e){		out.println("Error Occured : "+e.getMessage());		}
%>
</body>
</html>