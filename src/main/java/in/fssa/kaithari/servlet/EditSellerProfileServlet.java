package in.fssa.kaithari.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
import in.fssa.kaithari.service.SellerService;

/**
 * Servlet implementation class EditSellerProfileServlet
 */
@WebServlet("/seller/profile_edit")
public class EditSellerProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			HttpSession session = request.getSession();
			
			Integer sellerId = (Integer) session.getAttribute("sellerId");
		    SellerService sellerService = new SellerService();
			Seller seller = sellerService.findById(sellerId);
	       
			//AddressEntity address = AddressService.findByDefault(userId);
						
			//request.setAttribute("address", address);
						
			request.setAttribute("editSeller", seller);
			
			request.setAttribute("sellerId", sellerId);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/seller/Seller profile.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
		 
	}
}



