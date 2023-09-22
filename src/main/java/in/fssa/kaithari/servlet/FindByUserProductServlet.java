package in.fssa.kaithari.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.ProductService;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class FindByUserProductServlet
 */
@WebServlet("/products/user_product/details")
public class FindByUserProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FindByUserProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String idParam = request.getParameter("id");
	        int productId = Integer.parseInt(idParam);
	        try {
	        	ProductService productservice = new ProductService();
	            Product product = productservice.findProductById(productId);
	            UserService userService = new UserService();
	            User user = userService.findById(product.getSellerId());
	            if (product != null) {
	                request.setAttribute("productDetails", product);
	                request.setAttribute("sellerName", user.getName());
	                RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/products/product_details.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
	            }
	        } catch (ServiceException e) {
	            e.printStackTrace();
	        } catch (ValidationException e) {
	            e.printStackTrace();
	        }
	}


}
