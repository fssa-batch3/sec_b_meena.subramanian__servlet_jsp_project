package in.fssa.kaithari.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.kaithari.exception.ServiceException;
import in.fssa.kaithari.exception.ValidationException;
import in.fssa.kaithari.model.Order;
import in.fssa.kaithari.model.Product;
import in.fssa.kaithari.model.User;
import in.fssa.kaithari.service.OrderService;
import in.fssa.kaithari.service.ProductService;
import in.fssa.kaithari.service.UserService;

/**
 * Servlet implementation class MyOrdersServlet
 */
@WebServlet("/user/my_orders")
public class MyOrdersServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Integer userIdObject = (Integer) session.getAttribute("userId");

        if (userIdObject != null) {
            int userId = userIdObject.intValue();
            UserService userService = new UserService();
            OrderService orderService = new OrderService();

            try {
                User user = userService.findById(userId);
                Set<Order> orderList = orderService.findOrderByUserId(userId);
                List<Product> productList=new ArrayList<>();
                Product product=new Product();
                
                for(Order order:orderList) {
                	product=new ProductService().findProductById(order.getProductId());
                	productList.add(product);
                }

         System.out.println(productList);
                   request.setAttribute("productDetails", productList);


                request.setAttribute("userDetails", user);
                request.setAttribute("orderList", orderList);

                RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/orders/my orders.jsp");
                dispatcher.forward(request, response);
            } catch (ServiceException | ValidationException e) {
                e.printStackTrace();
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
    }
}
