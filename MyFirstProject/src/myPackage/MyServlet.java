package myPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str1=request.getParameter("email");
		String str2=request.getParameter("password");
		
		response.getWriter().append("DoGet is calling "+str1+" "+str2);
		
	}
// difference between doGet and doPost can be seen in the url get gives the attribute passed in url and doPost doesn't give it 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String str1=request.getParameter("email");
		String str2=request.getParameter("password");
		
		response.getWriter().append("DoGet is calling "+str1+" "+str2);
		}
}
