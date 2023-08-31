package in.fssa.kaithari.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.service.ProductService;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/product/update")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id=request.getParameter("id");
	    int categoryId =Integer.parseInt(request.getParameter("categoryId"));
	    int price =Integer.parseInt(request.getParameter("Price"));
      	String description = request.getParameter("description");
        String productName = request.getParameter("product_name");
       

        Integer idInt = Integer.parseInt(id);

        
        Product product = new Product();
        product.setId(idInt);
        product.setDescription(description);
        product.setName(productName);
        product.setCategory_id(categoryId);
        product.setPrice(price);
        ProductService ps=new ProductService();
        
       try {
    	   ps.updateProduct(idInt, product);
		response.sendRedirect(request.getContextPath()+"/list_all_products");
	} catch (ServiceException e) {
		e.printStackTrace();
		throw new ServletException(e.getMessage());
	} catch (ValidationException e) {
		e.printStackTrace();
		throw new ServletException(e.getMessage());
	}
	
	}
}
