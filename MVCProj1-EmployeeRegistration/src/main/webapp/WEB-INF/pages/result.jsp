<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updated...</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style type="text/css">

.col-md-4{
	padding-bottom: 20px;
}
.col-md-4 p{
	font-weight: bold;
}

</style>


</head>
<body class="bg-light">

	<div class="container">
	
	<h3 class="text-dark">Employee Details Update !!!</h3>
	<hr>
	
	<div class="row">
	
		<div class="col-md-4">
			<p>Employee Name:: </p>
			${emp.empName}
		</div>
		
		<div class="col-md-4">
		<p>Employee Designation</p>
			${emp.job}
		</div>
		
		<div class="col-md-4">
		<p>Employee Salary</p>
			${emp.salary}
		</div>
		
		<div class="col-md-4">
		<p>Father Name</p>
			${emp.fatherName}
		</div>
		
		<div class="col-md-4">
		<p>Address</p>
			${emp.address}
		</div>
		
	</div>
	</div>
</body>
</html>