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
import in.fssa.kaithari.model.Seller;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.SellerService;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class UpdateSellerAddressServlet
 */
@WebServlet("/seller/update_address")
public class UpdateSellerAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Seller seller = new Seller();
		int sellerId = 0;

		try {

			HttpSession session = request.getSession();

			sellerId = (Integer) session.getAttribute("sellerId");

			String name = request.getParameter("name");
			seller.setName(name);
			String address = request.getParameter("address");
			seller.setAddress(address);
			String district = request.getParameter("district");
			seller.setDistrict(district);
			int pincode = Integer.parseInt(request.getParameter("pincode"));
			seller.setPincode(pincode);
			Long mobile_number = Long.parseLong(request.getParameter("mobile_number"));
			seller.setMobileNumber(mobile_number);
			String village = request.getParameter("village");
			seller.setVillage(village);

			SellerService sellerService = new SellerService();
			sellerService.updateAddress(sellerId, name, address, district, mobile_number, pincode, village);
			System.out.println("updated succesfull");
			response.sendRedirect(request.getContextPath()+"/seller/profile");
	
		} catch (ValidationException | ServiceException e) { 
			e.printStackTrace();
			throw new ServletException(e.getMessage());

		} catch (PersistenceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}

	}


}
