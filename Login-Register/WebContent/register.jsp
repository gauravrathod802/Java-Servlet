<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="register.css">

</head>
<body>
	<div class="container">
			<h1>Register</h1>
	
	<form action="" method="post">
		<label for="name">Name</label><br>
		<input type="text" id="name" placeholder="Enter name"><br>
		<label for="email">Email</label><br>
		<input type="email" id="email" placeholder="Enter email"><br>
		<label for="username">Username</label><br>
		<input type="text" id="username" placeholder="Enter username"><br>
		<label for=password>Password</label><br>
		<input type="password" id="password" placeholder="Enter password"><br><br>
		<label>Gender</label><br>
		<input type="radio" name="age">Male
		<input type="radio" name="age">Female
		<input type="radio" name="age">Others<br><br><br>		
		<input type="submit" value="Register" class="registerBtn">
		<p>Already have an account?<a href="login.jsp">click here</a></p>	
		
		
	</form>
	</div>
</body>
</html>