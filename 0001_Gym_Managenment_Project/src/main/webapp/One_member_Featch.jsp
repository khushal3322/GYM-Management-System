<%@page import="Servlet.one_Featch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="javax.*" import="controller.MemberController"
	import="component.Member" import="Servlet.one_Featch"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>One_member</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 20px;
}

h1, h3 {
	color: #333;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	margin: auto;
}

label {
	display: block;
	margin-bottom: 8px;
}

input[type="number"], input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #ddd;
}

input[type="submit"] {
	background-color: #5cb85c;
	color: white;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #4cae4c;
}

.container {
	margin-top: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	text-align: left;
	padding: 8px;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>

	<div class="container">

		<br>
		<h1>Gym Management Dashboard</h1>
		<!-- Add your form or other elements here -->
		<form action="one_featch" method="post">
			<h3>Enter The Member ID To Fetch</h3>
			<label for="fetch_id">Member ID:</label> <input type="number"
				name="fetch" id="fetch_id" required> <input type="submit"
				value="Fetch">

		</form>
		<!-- Example table -->
		



	
		
	






	</div>
</body>
</html>