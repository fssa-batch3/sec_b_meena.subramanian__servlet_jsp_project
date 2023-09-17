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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Product product = new Product();

		String id = request.getParameter("id");

		String name = request.getParameter("product_name");
		String description = request.getParameter("description");
		int price = Integer.parseInt(request.getParameter("Price"));
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		String image = request.getParameter("image");
		int offers = Integer.parseInt(request.getParameter("offer"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int length = Integer.parseInt(request.getParameter("length_radio"));
		String designName = request.getParameter("Design");
		String jarigai = request.getParameter("jarigai");
		int sellerId = (Integer) request.getSession().getAttribute("sellerId");

		product.setName(name);
		product.setDescription(description);
		product.setPrice(price);
		product.setCategory_id(categoryId);
		product.setSellerId(sellerId);
		product.setDesignName(designName);
		product.setImage(image);
		product.setJarigai(jarigai);
		product.setLength(length);
		product.setOffers(offers);
		product.setQuantity(quantity);

		Integer idInt = Integer.parseInt(id);

		ProductService ps = new ProductService();

		try {
			ps.updateProduct(idInt, product);
			response.sendRedirect(request.getContextPath() + "/list_all_products");
		} catch (ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		} catch (ValidationException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}

	}
}
