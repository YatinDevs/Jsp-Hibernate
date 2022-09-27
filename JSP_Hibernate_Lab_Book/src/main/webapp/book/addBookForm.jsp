<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Form</title>
</head>
<body>
<h2>** Add Book Data **</h2>
<form action="addBook.jsp">
<p>ISBN : <input type="text" name="isbn" placeholder="Enter ISBN"/></p>
<p>Book Name : <input type="text" name="bname" placeholder="Enter Book Name"/></p>
<p>Author Name : <input type="text" name="aname" placeholder="Enter Author Name"/></p>
<p>Price : <input type="text" name="price" placeholder="Enter Price"/></p>
<p><input type="submit"/></p>
</form>
</body>
</html>