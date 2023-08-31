package in.fssa.kaithari.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.kaithari.service.ProductService;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/product/delete")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ProductService ps = new ProductService();
			int id = Integer.parseInt(request.getParameter("id"));
			ps.deleteProduct(id);
			response.sendRedirect(request.getContextPath() +"/list_all_products.jsp");
		}
		catch(Exception e) {
			 e.printStackTrace();
		}
	}

	
}
