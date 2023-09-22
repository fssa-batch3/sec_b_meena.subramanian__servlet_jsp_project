package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.util.*;

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
import in.fssa.kaithari.service.OrderService;
import in.fssa.kaithari.service.ProductService;

/**
 * Servlet implementation class SellerOrderShipingServlet
 */
@WebServlet("/seller/order_shipping")
public class SellerOrderShipingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

        Integer userIdObject = (Integer) session.getAttribute("sellerId");
        System.out.print(userIdObject);
	 if (userIdObject != null) {
	 try {
		  int userId = userIdObject.intValue();
		  System.out.print(userId);
		  OrderService orderService = new OrderService();
		  List<Order> order = orderService.findOrderBySellerId(userId);
		  request.setAttribute("orderList", order);
		  
		  List<Product> productList = new ArrayList<>();
		  
		  for(Order p : order) {

		  ProductService productService = new ProductService();
		  Product product = productService.findProductById(p.getProductId());
		  productList.add(product);
				  
		  }
		  
		  request.setAttribute("productDeatils", productList);

	    	RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/seller products/seller_shipping_page.jsp");
			dispatcher.forward(request, response);
	
	      } catch (NumberFormatException e) {
		 e.printStackTrace();
	     } catch (ValidationException e) {
		      e.printStackTrace();
	         } catch (Exception e) {
			  e.printStackTrace();
		} 
	}
	}
}
