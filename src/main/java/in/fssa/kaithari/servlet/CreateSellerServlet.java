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
@WebServlet("/seller/create")
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
        String district = request.getParameter("district"); // New field
        int pincode = Integer.parseInt(request.getParameter("pincode")); // New field
        String village = request.getParameter("village"); // New field
        long mobileNumber = Long.parseLong(request.getParameter("mobile_number")); // New field
        String address = request.getParameter("address"); // New field

        seller.setName(name);
        seller.setEmail(email);
        seller.setProofImage(proofImage);
        seller.setIdImage(idImage);
        seller.setPassword(password);
        seller.setDistrict(district); 
        seller.setPincode(pincode); 
        seller.setVillage(village);
        seller.setMobileNumber(mobileNumber); 
        seller.setAddress(address); 



        try {
            sellerService.create(seller);
            response.sendRedirect(request.getContextPath() + "/pages/seller/seller_login.jsp");

        } catch (ServiceException | ValidationException e) {
            e.printStackTrace();
            out.println(e.getMessage());
        }
    }

}
