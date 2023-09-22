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
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class CreateUserServlet
 */
@WebServlet("/user/create")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService=new UserService();
		User user=new User();
		
		PrintWriter out = response.getWriter();
		
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        long mobile_number =Long.parseLong(request.getParameter("mobile_number"));
        String district = request.getParameter("district");
        String address = request.getParameter("address");
        String village = request.getParameter("village");
        int pincode = Integer.parseInt(request.getParameter("pincode"));
 
        
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setDistrict(district);
        user.setPincode(pincode);
        user.setVillage(village);
        user.setMobileNumber(mobile_number);
        user.setAddress(address);
        
       
        
        
        
        
        try {
			userService.create(user);
			 response.sendRedirect(request.getContextPath()+"/user/login");
			 
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} 
	}
}
