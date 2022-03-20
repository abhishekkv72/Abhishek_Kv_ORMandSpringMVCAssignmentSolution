<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>\Customer Form</title>
</head>
<body>

	<div class="container">
		<h3>Add Customer</h3>
		<hr>
		<p class="h4 mb-4">Customer</p>
		<form action="/customerRelationshipmanagement/customer/save"
			method="POST">
			<input type="hidden" name="id" value="${Customer.id}" />
			<div class="form-inline">
				<input type="text" name="firstName" value="${Customer.firstName}"
					class="form-control mn-4 col-4" placeholder="FirstName">
			</div>
			<div class="form-inline">
				<input type="text" name="lastName" value="${Customer.lastName}"
					class="form-control mn-4 col-4" placeholder="lastName">
			</div>
			<div class="form-inline">
				<input type="text" name="course" value="${customer.email}"
					class="form-control mn-4 col-4" placeholder="course">
			</div>


			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>
		<hr>
		<a href="/customerRelationshipmanagement/customer/list">Back to
			Students list</a>
	</div>
</body>
</html>