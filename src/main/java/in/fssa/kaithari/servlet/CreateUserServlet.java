package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class CreateUserServlet
 */
@WebServlet("/user/create")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


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
        
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        
        
        try {
			userService.create(user);
			 response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		} 
       
        
	}

}
