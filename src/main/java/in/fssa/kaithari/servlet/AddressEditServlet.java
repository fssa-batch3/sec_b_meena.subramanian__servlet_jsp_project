package in.fssa.kaithari.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class AddressEditServlet
 */
@WebServlet("/address/edit")
public class AddressEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			HttpSession session = request.getSession();
			
			Integer userId = (Integer) session.getAttribute("userId");
			
			UserService userService = new UserService();
			
			User user = userService.findById(userId);	
			
				
		
			request.setAttribute("editAddress", user);
					
			request.setAttribute("userId", userId);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/profile page/addressedit.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} 
	}
	

}
