package in.fssa.kaithari.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
	        rd.forward(request, response);  
	    }
	    
	    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	        try {
	            String email = request.getParameter("email");
	            String password = request.getParameter("password");
	            UserService userService = new UserService();
	            User user = userService.findByEmail(email);
	            if (user == null) {
	                System.out.println("User not found");
	            } else if (!password.equals(user.getPassword())) {
	                System.out.println("Incorrect email number or Password:(");
	            } else {
	                System.out.println("Login Successfull:)");
	                int id = user.getId();
	                request.getSession().setAttribute("userId", id); 
	                response.sendRedirect(request.getContextPath() + "/list_all_products");
	            }
	           
	        } catch (ServiceException e) {
	            e.printStackTrace();
	        } catch (ValidationException e) {
	            e.printStackTrace();
	        }
	    }
	    

}
