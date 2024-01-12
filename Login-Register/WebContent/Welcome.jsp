<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<link rel="stylesheet" href="welcome.css">
<body>
<%
	HttpSession session1=request.getSession(false);
	if(session1 != null && session1.getAttribute("email")!= null){
//		get the username from the session
		String email = (String) session1.getAttribute("email");
	
%>

 <div class="container2">
        <h2>Welcome, <%= email %>!</h2>
        <p>We're delighted to have you on our platform. 🌟</p>
        <h3>Explore, learn, and connect with our vibrant community! 🚀</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    </div>

<%
	}else{
		// redirect to the login page if the session is not valid 
		response.sendRedirect("login.jsp");
	}

%>

</body>
</html>