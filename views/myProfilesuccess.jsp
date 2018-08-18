<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<table>
<tr>
<td><h1>Welcome ${merchant.merchantName}</h1></td>
</tr>
<tr>
<td>
<h2>${merchant.email}</h2>
</td>
</tr>
<tr>
<td>
<h2>${merchant.phoneNumber}</h2>
</td>
</tr>
<tr>
<td>
<%-- <form action="changePassword/${merchant.merchantId}">
  <input type="submit" value="Change Password" /> --%>
   <a href='<c:url value="changePassword1"><c:param name="merchantId" value="${pageContext.request.userPrincipal.name}"/></c:url>' data-toggle="tab">Change Password</a>
  </td>
</tr>
</table>
</body>
</html>