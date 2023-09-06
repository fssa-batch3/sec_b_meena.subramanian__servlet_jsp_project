package in.fssa.kaithari.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.service.ProductService;

/**
 * Servlet implementation class EditProductServlet
 */
@WebServlet("/product/edit")
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");		
	try {
		
		Product productDetails =new ProductService().findProductById(Integer.parseInt(id));
		request.setAttribute("product", productDetails);
			
			RequestDispatcher rd = request.getRequestDispatcher("/edit_product.jsp");
			rd.forward(request, response);
	} catch (Exception e) {
		 
		throw new ServletException(e.getMessage());
		}
	}


}
