<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div class=container>
		<form action="index.html" method="post">
			<h1>Login</h1>
			<label for="email">Email</label>
			<input type="email" id="email" placeholder="Enter your email"><br>
			<label for=password>Password</label>
			<input type="password" id="password" placeholder="Enter your password"><br><br>
			<input type="submit" value="Login" class="loginBtn">
			<p>Don't have an account?<a href="register.jsp">click here</a></p>	
		</form>
	
	</div>

</body>
</html>