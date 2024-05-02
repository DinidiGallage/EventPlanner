package clientControl;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateClientServlet")
public class UpdateClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = ClientDButil.updateClient(id, name, email, phone, username, password);
		
		if (isTrue == true) {
			
			List<Client> clientDetails = ClientDButil.getClientDetails(id);
			request.setAttribute("clientDetails", clientDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("clientAccount.jsp");
			dis.forward(request, response);
			
		}else {
			
			List<Client> clientDetails = ClientDButil.getClientDetails(id);
			request.setAttribute("clientDetails", clientDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("clientAccount.jsp");
			dis2.forward(request, response);
		}
	}

}
