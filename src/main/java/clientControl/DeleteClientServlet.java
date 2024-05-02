package clientControl;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteClientServlet")
public class DeleteClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = ClientDButil.deleteClient(id);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("clientInsert.jsp");
			dis.forward(request, response);
		}
		else {
			List<Client> clientDetails = ClientDButil.getClientDetails(id);
			request.setAttribute("clientDetails", clientDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("clientAccount.jsp");
			dis.forward(request, response);
		}
	}

}
