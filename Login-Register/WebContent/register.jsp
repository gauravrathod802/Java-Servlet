<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="register.css">

</head>
<body>
	<div class="container">
			<h1>Register</h1>
	
	<form action="Register" method="post">
		<label for="name">Name</label><br>
		<input type="text" id="name" name="name" placeholder="Enter name" required/><br>
		<label for="email">Email</label><br>
		<input type="email" id="email" name="email"placeholder="Enter email" required/><br>
		<label for="username">Username</label><br>
		<input type="text" id="username" name="username" placeholder="Enter username" required/><br>
		<label for=password>Password</label><br>
		<input type="password" id="password" name="password" placeholder="Enter password" required/><br><br>
		<label>Gender</label><br>
		<input type="radio" name="gender" value="Male"/>Male <input type="radio" name="gender" value="Female"/>Female<input type="radio" name="gender" value="Others"/>Others<br><br><br>		
		<input type="submit" value="Register" class="registerBtn">
		<p>Already have an account?<a href="login.jsp">click here</a></p>	
		
		
	</form>
	</div>
</body>
</html>