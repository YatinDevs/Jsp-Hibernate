<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Issue Form</title>
</head>
<body>
<h2>** Book Issue Form **</h2>
<p><big><b><u>Note</u> :- </b></big> Maximum 5 Books are Allowed To a Member</p>
<form action="addBookIssued.jsp">
<p>Member CID : <input type="text" name="cid" placeholder="Enter Member CID"/></p>
<p>1st Book ISBN : <input type="text" name="isbn1" placeholder="Enter Book ISBN"/></p>
<p>2nd Book ISBN : <input type="text" name="isbn2" placeholder="Enter Book ISBN"/></p>
<p>3rd Book ISBN : <input type="text" name="isbn3" placeholder="Enter Book ISBN"/></p>
<p>4th Book ISBN : <input type="text" name="isbn4" placeholder="Enter Book ISBN"/></p>
<p>5th Book ISBN : <input type="text" name="isbn5" placeholder="Enter Book ISBN"/></p>
<p><input type="submit"/></p>
</form>
</body>
</html>