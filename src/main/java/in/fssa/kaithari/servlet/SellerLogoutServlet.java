package in.fssa.kaithari.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SellerLogoutServlet
 */
@WebServlet("/seller/logout")
public class SellerLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
        if (session != null) {
            Integer sellerIdAttribute = (Integer) session.getAttribute("sellerId");
            if (sellerIdAttribute != null) {
                session.setAttribute("sellerId", 0);
                session.invalidate();
            }
        }
        response.sendRedirect(request.getContextPath() + "/pages/seller products/seller home.jsp");
    }
}
