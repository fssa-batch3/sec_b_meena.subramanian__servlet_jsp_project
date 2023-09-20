package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class ListAllSareesServlet
 */
@WebServlet("/products/saree")
public class ListAllSareesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAllSareesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService ps=new ProductService();
		
		try {
			Set<Product>  listCottonSaree=ps.findProductByCategoryId(8);
			Set<Product> listSilkSaree=ps.findProductByCategoryId(7);
			
			request.setAttribute("cottonSaree", listCottonSaree);
			request.setAttribute("silkSaree", listSilkSaree);
			
			RequestDispatcher rd = request.getRequestDispatcher("/pages/products/product_list saree.jsp");
			rd.forward(request, response);
			
		} catch (ValidationException e) {
			
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		} catch (ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}
	
				
		
		
		
	}

	

}
