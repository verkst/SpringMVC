<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
	
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
	
	<h3 class="text-dark">Employee Details</h3>
	<hr>
	
	<div class="row">
	<form:form action="register" modelAttribute="emp">

		<form:hidden path="empId" />
		
		<div class="col-md-3">
		<img class="img-thumbnail" src="<c:url  value="/resources/images/Profile.jpg"/>"  height="150px" width="120px"/>
		</div>

		<div class="col-md-4">
		<p>Employee Name</p>
		<form:errors path="empName"/>
		<form:input path="empName" />
		</div>
		
		<div class="col-md-4">
		<p>Employee Designation</p>
		<form:errors path="job"/>
		<form:input path="job" />
		</div>
		
		<div class="col-md-4">
		<p>Employee Salary</p>
		<form:errors path="salary"/>
		<form:input path="salary" />
		</div>
		
		<div class="col-md-4">
		<p>Father Name</p>
		<form:errors path="fatherName"/>
		<form:input path="fatherName" />
		</div>
		
		<div class="col-md-4">
		<p>Address</p>
		<form:errors path="address"/>
		<form:input path="address" />
		</div>
		
		<div class="col-md-12">
			<button class="btn btn-danger active" type="submit">Update</button>
		</div>
	
		
	</form:form>
	</div>
	</div>
</body>
</html>