package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.service.ProductService;

/**
 * Servlet implementation class ListAllProductsServlet
 */

@WebServlet("/list_all_products")
public class ListAllProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			 //HttpSession session = request.getSession();

			int id=(Integer) request.getSession().getAttribute("userId");
		        
		      
		 ProductService productService = new ProductService();
			Set<Product> product = productService.findProductByUsertId(id);
			request.setAttribute("productDetails", product);
			RequestDispatcher rd = request.getRequestDispatcher("/list_all_products.jsp");
			rd.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
