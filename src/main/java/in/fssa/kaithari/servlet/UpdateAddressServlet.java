package in.fssa.kaithari.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.kaithari.exception.PersistenceException;
import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class UpdateAddressServlet
 */
@WebServlet("/address/update")
public class UpdateAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		int userId = 0;

		try {

			HttpSession session = request.getSession();

			userId = (Integer) session.getAttribute("userId");

			String name = request.getParameter("name");
			user.setName(name);
			String address = request.getParameter("address");
			user.setAddress(address);
			String district = request.getParameter("district");
			user.setDistrict(district);
			int pincode = Integer.parseInt(request.getParameter("pincode"));
			user.setPincode(pincode);
			Long mobile_number = Long.parseLong(request.getParameter("mobile_number"));
			user.setMobileNumber(mobile_number);
			String village = request.getParameter("village");
			user.setVillage(village);

			UserService userService = new UserService();
			userService.updateAddress(userId, name, address, district, mobile_number, pincode, village);
			System.out.println("updated succesfull");
			response.sendRedirect(request.getContextPath()+"/user/profile");
	
		} catch (ValidationException | ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());

		} catch (PersistenceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}

	}
}
