package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.UserService;
import in.fssa.kaithari.util.Logger;



/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	  
	  
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        RequestDispatcher rd = request.getRequestDispatcher("/logion page.jsp");
	        rd.forward(request, response);  
	    }
	    
	    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	    	
	    	  PrintWriter out = response.getWriter();
			
	        try {
	            String email = request.getParameter("email");
	            String password = request.getParameter("password");
	            UserService userService = new UserService();
	            User user = userService.findByEmail(email);
	            if (user == null) {
					Logger.info("User not found");
				} else if (!BCrypt.checkpw(password, user.getPassword())) {
					Logger.info("Incorrect Phone number or Password:(");
					out.println("<script>alert('Incorrect Phone number or Password')</script>");
					out.println("<script>window.history.back();</script>");
				} else {
					int id = user.getId();
					Logger.info("Login Successfull:)");
				   request.getSession().setAttribute("userId", id); 
	                response.sendRedirect(request.getContextPath()+"/index.jsp");
	            }
	           
	        } catch (Exception e) {
	            e.printStackTrace();
	            out.println("<script>alert('"+ e.getMessage() +"');</script>");
		 		out.println("<script>window.history.back();</script>");
				/* response.sendRedirect(request.getContextPath()+"/logion page.jsp"); */
	            
	        } 
	    }
	    

}
