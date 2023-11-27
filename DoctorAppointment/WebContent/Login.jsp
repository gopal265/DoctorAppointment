<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="Bootstrap.jsp"%>

</head>
<body>
	<%@include file="NavBar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card my-card">
					<div class="card-header text-center text-white my-bg-color">
						<p class="fs-4 text-center text-white mt-2">
							<i class="fa fa-group"></i> User Login
						</p>
					</div>
					
					<div class="card-body">
						<form action="Login" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> 
								<input
									name="email" type="email" placeholder="Enter Email"
									class="form-control" />
								
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> 
								<input
									name="password" type="password" placeholder="Enter password"
									class="form-control" />
							</div>

							<button type="submit"
								class="btn col-md-12 text-white my-bg-color">Submit</button>
						</form>
						<br>Don't have an account? <a href="Register.jsp"
							class="text-decoration-none">create one</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>