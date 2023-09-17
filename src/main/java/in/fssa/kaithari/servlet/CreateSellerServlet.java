package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.Seller;
import in.fssa.kaithari.service.SellerService;

/**
 * Servlet implementation class CreateSellerServlet
 */
@WebServlet("/pages/seller/create")
public class CreateSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateSellerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	 /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SellerService sellerService = new SellerService();
        Seller seller = new Seller();

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String proofImage = request.getParameter("proof_image");
        String idImage = request.getParameter("id_image");
        String password = request.getParameter("password");
        seller.setName(name);
        seller.setEmail(email);
        seller.setProofImage(proofImage);
        seller.setIdImage(idImage);
        seller.setPassword(password);

        try {
            sellerService.create(seller);
            response.sendRedirect(request.getContextPath() + "/seller/seller login.jsp");

        } catch (ServiceException | ValidationException e) {
            e.printStackTrace();
            out.println(e.getMessage());
        }
    }

}
