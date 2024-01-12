<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type=text/css href="login.css">
</head>
<body>
	<div class=container>
		<form action="LoginPage" method="post">
			<h1>Login</h1>
			<label for="email">Email</label><br>
			<input type="email" id="email" name="email" placeholder="Enter your email" required><br>
			<label for=password>Password</label><br>
			<input type="password" id="password" name="password" placeholder="Enter your password" required><br><br>
			<input type="submit" value="Login" class="loginBtn">
		</form>
		<p>Don't have an account?<a href="register.jsp">click here</a></p>	
		<p><a href="index.html">Home</a></p>
		
		<%String error = request.getParameter("error");
			if(error!=null && error.equals("1")){ %>
				<p style="color:red;">Invalid username or password. Please try again!</p>
		<%} %>
		
		<% String rs=request.getParameter("registration");
			if(rs != null && rs.equals("sucess")) { %>
				<p style="color:green;">Your Registration is Successful. Please Login.</p>
				
			<% } %>	
	</div>
</body>
</html>