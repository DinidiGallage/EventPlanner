package clientControl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		isTrue = ClientDButil.validate(userName, password);
		
		if (isTrue == true) {
			
			List<Client> clientDetails = ClientDButil.getClient(userName);
			request.setAttribute("clientDetails", clientDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("clientAccount.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<Script  type= 'text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
			
		}
		
	}
}
