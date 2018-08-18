<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="Answer/${merchant.email}" method="post"> 
<table>


<tr>
<td>${merchant.securityQuestion}</td>
</tr>


<tr>
<td>Security Answer: <input type="text" name="answer">
</td>
</tr>

<tr>
<td><input type = "submit" value = "submit"/>
</td>
</tr>




</table>
</form>
<%-- <a href="Answer/${merchant.email}"><input type="submit" value="Submit"></a> --%>
</body>
</html>
