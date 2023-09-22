package in.fssa.kaithari.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import in.fssa.kaithari.model.Order;
import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.OrderService;
import in.fssa.kaithari.service.ProductService;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class OrderSummeryServlet
 */
@WebServlet("/user/order_summery")
public class OrderSummeryServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
        
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	    Integer userIdObject = (Integer) session.getAttribute("userId");
	    
	    try {
	        int userId = userIdObject.intValue();
	        UserService userService = new UserService();
	        User user = userService.findById(userId);

	        int orderId = Integer.parseInt(request.getParameter("order_id"));
	        OrderService orderService = new OrderService();
	        Order order = orderService.findById(orderId);
	        
	        int productId = order.getProductId(); 
	        // Retrieve product details
	        ProductService productService = new ProductService(); 
	        Product product = productService.findProductById(productId);

	        // Set attributes to be used in JSP
	        request.setAttribute("userDetails", user);
	        request.setAttribute("order", order);
	        request.setAttribute("productDetails", product); 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/orders/order_summary_page.jsp");
	        dispatcher.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
