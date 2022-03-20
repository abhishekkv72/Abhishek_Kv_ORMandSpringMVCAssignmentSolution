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
<title>Customers Directory</title>
</head>
<body>

	<div class="container">
		<h3>Customer List</h3>
		<hr>


		<a href="/customerManagementRelationship/customer/showFormForAdd"
			class="btn btn-primary btn-sm mb-3"> Add Customer</a>

		<table class="table table-bordered table-stripped">
			<thead class="thead-dark">

				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>


				</tr>
			</thead>

			<tbody>

				<c:forEach item="${Customers}" var="tempCustomers">


					<tr>
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>

						<td><a
							href="/customerManagementRelationship/customer/showFormForUpdate?id=${tempCustomer.id}"
							class="btn btn-info btn-sm">Update</a> <a
							href="/customerManagementRelationship/customer/delete?id=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('are you sure you want to delete?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</body>
</html>