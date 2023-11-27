<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Login </title>
<%@include file = "Bootstrap.jsp" %>

<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card my-card">
					<div class="card-header text-center text-white my-bg-color">

						<p class="fs-4 text-center text-white mt-2">
							<i class="fa-solid fa-stethoscope"></i> Doctor Login
						</p>
					</div>

					<div class="card-body">
						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input
									name="email" type="email" placeholder="Enter Email"
									class="form-control">
								
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" placeholder="Enter password"
									class="form-control">
							</div>

							<button type="submit" class="btn my-bg-color text-white col-md-12">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>