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
 * Servlet implementation class UserProfileServlet
 */

@WebServlet("/user/profile")

public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			HttpSession session = request.getSession();

			Integer userId = (Integer) session.getAttribute("userId");

			UserService userService = new UserService();

			User user = userService.findById(userId);

//			AddressEntity address = AddressService.findByDefault(userId);

			// UserEntity user = UserService.findById(Integer.parseInt(userId));

			request.setAttribute("userDetails", user);
//			request.setAttribute("address", address);

//			System.out.println(address);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/profile page/profile page.jsp");
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
