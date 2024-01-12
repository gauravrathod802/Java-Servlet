<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<body>
<%
	HttpSession currentSession=request.getSession(false);
	if(currentSession != null ){
		currentSession.invalidate();
	}
	// redirect to the login page if the session is not valid 
	response.sendRedirect("index.html");

%>

</body>
</html>