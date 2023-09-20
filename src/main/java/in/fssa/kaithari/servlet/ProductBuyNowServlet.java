package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.Order;
import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.OrderService;
import in.fssa.kaithari.service.ProductService;
import in.fssa.kaithari.service.UserService;

import java.util.Date;

/**
 * Servlet implementation class ProductBuyNowServlet
 */
@WebServlet("/product/buy_now")
public class ProductBuyNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer userIdObject = (Integer) request.getSession().getAttribute("userId");
		int userId;
		if (userIdObject != null) {
		    userId = userIdObject.intValue();
		} else {
		    userId = 0;
		}

		System.out.println(userId);

		int productId = Integer.parseInt(request.getParameter("id"));

		System.out.println(productId);
		ProductService productService = new ProductService();

		try {

			UserService userService = new UserService();
			User user = userService.findById(userId);
			Product pdt = productService.findProductById(productId);

			request.setAttribute("userDetails", user);

			request.setAttribute("productDetails", pdt);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/buy now page/buy now details.jsp");
			dispatcher.forward(request, response);

		} catch (ValidationException | ServiceException e) {
			e.printStackTrace();
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    try {
	    	
	        // Get the values from the request parameters
	        int userId = Integer.parseInt(request.getParameter("user_id"));
	        int sellerId = Integer.parseInt(request.getParameter("seller_id"));
	        int productId = Integer.parseInt(request.getParameter("product_id"));
	        String name = request.getParameter("name");
	        String address = request.getParameter("address");
	        String village = request.getParameter("village");
	        String district = request.getParameter("district");
	        int buyQuantity = Integer.parseInt(request.getParameter("quantity"));
	        int pincode = Integer.parseInt(request.getParameter("pincode"));
	  

	        // Create an Order object with the extracted values
	        Order order = new Order();
	        order.setUserId(userId);
	        order.setSellerId(sellerId);
	        order.setProductId(productId);
	        order.setOrderStatus(false);
	        order.setName(name);
	        order.setAddress(address);
	        order.setVillage(village);
	        order.setDistrict(district);
	        order.setBuyQuantity(buyQuantity);
	        order.setPincode(pincode);
	        
	        Timestamp createdAt = new Timestamp(new Date().getTime()); // Current timestamp
	        order.setCreatedAt(createdAt);

	        // Call the service or DAO to save the order to the database
	        OrderService orderService = new OrderService();
	        orderService.createOrder(order);
	       

	        // Redirect or respond accordingly
	        response.sendRedirect(request.getContextPath() + "/user/my_orders"); // Redirect to the orders page

	    } catch (ServiceException | ValidationException e) {
	        e.printStackTrace();
	        // Handle exceptions if needed
	        throw new ServletException(e.getMessage());
	    }
	}

}
