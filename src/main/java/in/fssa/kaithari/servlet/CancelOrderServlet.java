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
import in.fssa.kaithari.service.OrderService;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class CancelOrderServlet
 */
@WebServlet("/user/cancel_order")
public class CancelOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		Integer userIdObject = (Integer) session.getAttribute("userId");
		try {

			int userId = userIdObject.intValue();
			UserService userService = new UserService();
			User user = userService.findById(userId);

			System.out.println(userId);

			int orderId = (Integer) Integer.parseInt(request.getParameter("order_id"));

			OrderService order = new OrderService();
			order.cancelOrder(orderId);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/user/my_orders");
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
