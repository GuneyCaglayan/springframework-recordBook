<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<
<title>Güney Çağlayan ~ Sample Project</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="asset/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<!-- Main css -->
<link rel="stylesheet" href="asset/css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
			<div class="form-group form-button">
                    	<a href="/recordBook/" type="submit" class="form-submit" value="home">Home</a>
                    </div>
						<h2 class="form-title" style="margin-bottom:-10px;">User List</h2>
						<table class="table table-bordered table-hover table-striped">
							<thead class="thead-dark">
								<tr>
									<th scope="col">#</th>
									<th scope="col">First Name</th>
									<th scope="col">Last Name</th>
									<th scope="col">Blood Group</th>
									<th scope="col">Phone Number</th>
									<th scope="col">Address</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${userList}" var="user">
								<tr>
									<th scope="row">${user.id}</th>
									<td>${user.firstName}</td>
									<td>${user.lastName}</td>
									<td>${user.blood}</td>
									<td>${user.phoneNumber}</td>
									<td>${user.address}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
			</div>
		</section>
	</div>

	<!-- JS -->
	<script src="asset/vendor/jquery/jquery.min.js"></script>
	<script src="asset/js/main.js"></script>
	<script src="asset/custom/user-list.js"></script>
</body>
</html>

