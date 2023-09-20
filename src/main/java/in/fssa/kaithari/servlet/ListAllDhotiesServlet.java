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
 * Servlet implementation class ListAllDhotiesServlet
 */
@WebServlet("/products/dhoti")
public class ListAllDhotiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAllDhotiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService ps=new ProductService();
		
		try {
			Set<Product>  listDhotis=ps.findProductByCategoryId(9);
			
			request.setAttribute("Dhotis", listDhotis);
			
			RequestDispatcher rd = request.getRequestDispatcher("/pages/products/product_list dothi.jsp");
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
