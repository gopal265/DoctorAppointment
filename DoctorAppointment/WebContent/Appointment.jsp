<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment</title>
<%@include file="Bootstrap.jsp" %>
</head>
<body>

	<%@include file="NavBar.jsp" %>
	<div class="container p-3">
		<div class="row">
			
			<div class="col-md-6 p-5">
				<img alt="" src="images/doc3.jpg" width="370" height="500">
			</div>
			
			<div class="col-md-6">
				<div class="card my-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>

						<form class="row g-3" action="addAppointment" method="post">
							
							<!-- take user Id in hidden field -->
							<input type="hidden" name="userId" value="${ userObj.id }">
							
							<div class="col-md-6">
								<label class="form-label">Full Name</label> <input required="required"
									name="fullName" type="text" placeholder="Enter full name"
									class="form-control">

							</div>

							<div class="col-md-6">
								<label class="form-label">Gender</label> <select
									class="form-control" name="gender" required="required">
									<option selected="selected" disabled="disabled">---Select
										Gender---</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label class="form-label">Age</label> <input name="age"
								required="required"	type="number" placeholder="Enter your Age" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Appointment Date</label> <input
								required="required"	name="appointmentDate" type="date" class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Email</label> <input name="email"
								required="required"	type="email" placeholder="Enter email" class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Phone</label> <input name="phone"
								required="required"	type="number" maxlength="11" placeholder="Enter Mobile no."
									class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Diseases</label> <input
								required="required"	name="diseases" type="text" placeholder="Enter diseases"
									class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Doctor</label> <select
								 required="required" class="form-control" name="doctorNameSelect">
									<option selected="selected" disabled="disabled">---Select---</option>
														
							</div>

							<div class="col-md-12">
								<label class="form-label">Full Address</label>
								<textarea name="address" required="required" class="form-control" rows="3" cols=""></textarea>
							</div>


								<div class="col-md-12">
									<a href="user_login.jsp" class="btn my-bg-color text-white col-md-12">Submit</a>
								</div>



						</form>


					</div>
				</div>

			</div>



		</div>


	</div>
</body>
</html>