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
<h1>All Products</h1>
	
		<table>
		<tr>
		<th>Product Name</th>
		<th>Brand</th>
		<th>Description</th>
		<th>Price</th>
		<th>Quantity Available</th>
		<th>Status</th>
		</tr>
			<tr>
				<td><c:forEach items="${product}" var="product1">
				
						<tr>
<!-- 						<td>Product Name</td> -->
							<td>${product1.productName}</td>

						
<!-- 						<td>Brand</td> -->
							<td>${product1.brand}</td>
						
						
<!-- 						<td> Description</td> -->
							<td>${product1.productDesc}</td>
						
<!-- 						<td>Price</td> -->
							<td>${product1.productPrice}</td>
						
<!-- 						<td>Quantity Available</td> -->
							<td>${product1.productQuantityAvailable}</td>
						
<!-- 						<td>Status</td> -->
							<td>${product1.productStatus}</td>
						</tr>
					</c:forEach></td>
			</tr>
		</table>
	
<div class="container" style="margin: 50px">
		<div>
			<form action="/logout" method="post">
				<button type="submit" class="btn btn-danger">Log Out</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</body>
</html>