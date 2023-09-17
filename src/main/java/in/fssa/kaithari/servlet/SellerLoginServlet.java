package in.fssa.kaithari.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.kaithari.exception.PersistenceException;
import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.Seller;
import in.fssa.kaithari.service.SellerService;

@WebServlet("/seller/login")
public class SellerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/pages/seller/seller login.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            SellerService sellerService = new SellerService();
            Seller seller = new Seller();
			try {
				seller = sellerService.findByEmail(email);
			} catch (PersistenceException e) {
				e.printStackTrace();
			}
            if (seller == null) {
                System.out.println("Seller not found");
            } else if (!password.equals(seller.getPassword())) {
                System.out.println("Incorrect email or password");
            } else {
                System.out.println("Login Successful");
                int id = seller.getId();
                request.getSession().setAttribute("sellerId", id);
                response.sendRedirect(request.getContextPath() + "/list_all_products.jsp");
            }

        } catch (ServiceException e) {
            e.printStackTrace();
        } catch (ValidationException e) {
            e.printStackTrace();
        }
    }
}
