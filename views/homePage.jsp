<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
.with-nav-tabs.panel-primary .nav-tabs>li>a, .with-nav-tabs.panel-primary .nav-tabs>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li>a:focus {
	color: #fff;
}

.with-nav-tabs.panel-primary .nav-tabs>.open>a, .with-nav-tabs.panel-primary .nav-tabs>.open>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>.open>a:focus, .with-nav-tabs.panel-primary .nav-tabs>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li>a:focus {
	color: #fff;
	background-color: #3071a9;
	border-color: transparent;
}

.with-nav-tabs.panel-primary .nav-tabs>li.active>a, .with-nav-tabs.panel-primary .nav-tabs>li.active>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.active>a:focus {
	color: #428bca;
	background-color: #fff;
	border-color: #428bca;
	border-bottom-color: transparent;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu {
	background-color: #428bca;
	border-color: #3071a9;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a {
	color: #fff;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>li>a:focus
	{
	background-color: #3071a9;
}

.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a:hover,
	.with-nav-tabs.panel-primary .nav-tabs>li.dropdown .dropdown-menu>.active>a:focus
	{
	background-color: #4a9fe9;
}
</style>
</head>
<body>


	<div class="container">

		<div class="row">

			<div class="col-md-10">
				<div class="panel with-nav-tabs panel-primary">
					<div class="panel-heading">
						<ul class="nav nav-tabs">

							<li><a href='<c:url value="addProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'
								data-toggle="tab">AddProduct</a></li>
							
							<li><a href='<c:url value="removeProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'
								data-toggle="tab">removeProduct</a></li>
							<!--  <li><a href="removeProduct" data-toggle="tab">Delete</a></li>-->
							
							<li><a href='<c:url value="updateProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'
								data-toggle="tab">UpdateProduct</a></li>
							<!-- <li><a href="updateProduct" data-toggle="tab">Update</a></li> -->
							
							<li><a href='<c:url value="getAllProducts"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'
								data-toggle="tab">View Inventory</a></li>
							<!-- <li><a href="getAllProducts" data-toggle="tab">View
									Inventory</a></li> -->
							
							<li><a href='<c:url value="CustomerOrders"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'
								data-toggle="tab">CustomerOrders</a></li>
							<!-- <li><a href="#" data-toggle="tab">Customer Orders</a></li> -->
							
							<li><a href='<c:url value="myProfilesuccess"><c:param name="merchantId" value="${pageContext.request.userPrincipal.name}"/></c:url>'
								data-toggle="tab">MyProfile</a></li>
							<!-- <li><a href="myProfile" data-toggle="tab">My Profile</a></li> -->
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>
	Welcome: ${pageContext.request.userPrincipal.name}
	<div class="container" style="margin: 50px">
		<div>
			<form action="/logout" method="post">
				<button type="submit" class="btn btn-danger">Log Out</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
	<%-- 	<a href='<c:url value="addProductSuccessPage"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>AddProduct</a> --%>
</body>
</html>