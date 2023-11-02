package in.fssa.kaithari.servlet; 
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

import javax.servlet.ServletException; import
javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest; import
 javax.servlet.http.HttpServletResponse; import
 javax.servlet.http.HttpSession;
 
 import org.json.JSONArray; import org.json.JSONObject;
 
 import in.fssa.kaithari.exception.ServiceException; import
 in.fssa.kaithari.exception.ValidationException; import
 in.fssa.kaithari.model.Order; import in.fssa.kaithari.service.OrderService;
 
/**
	 Servlet implementation class CartBuyBowServlet
	 */

 @WebServlet("/cart_buy_now_servlet") public class CartBuyBowServlet extends
 HttpServlet { private static final long serialVersionUID = 1L;
 
		 protected void doPost(HttpServletRequest request, HttpServletResponse
		 response) throws ServletException, IOException {
		 
		 try {
		 
		 HttpSession session = request.getSession();
		 
		 Integer userIdObject = (Integer) session.getAttribute("userId");
		 
		 int userId = userIdObject.intValue(); 
		 
		
		 
		 String jsonInput = request.getReader().lines().collect(Collectors.joining());
		 
		 // System.out.println(jsonInput);
		 
		 // Parse the received JSON object 
		 JSONObject jsonObject = new JSONObject(jsonInput);
		 System.out.println(jsonObject);
		 
		 
		 // Extract the 'cart' array from the JSON object 
		 JSONArray jsonArray = jsonObject.getJSONArray("cart");
		 
//		 int getProductIid = (Integer) jsonObject.get("product_id");
		 
		 
		 
		 String getName = (String) jsonObject.get("name");
		 		 
		 String getAddress = (String) jsonObject.get("address");
		 
		 String getVillage = (String) jsonObject.get("village");
		 
		 String getDistrict = (String) jsonObject.get("district");
		 
		 String getPinCode = (String) jsonObject.get("pincode");
		 
		// String getPrice  = (String) jsonObject.get("current_price");
		 
		 String getPhone = (String) jsonObject.get("phone");
		 
		 if(jsonArray!=null) {
		 
			 for (int i = 0; i < jsonArray.length(); i++) {
		           
				 JSONObject itemObject = jsonArray.getJSONObject(i);
		           
				 int productQuantity = itemObject.getInt("product_quantity");
		         
				 System.out.println(productQuantity);
		         
				 int sellerId = itemObject.getInt("seller_id");
		         
				 int productId = itemObject.getInt("product_id");
				 
				 int currentPrice = (Integer)itemObject.getInt("current_price");
				

				 Order order = new Order();
				 
				 order.setBuyQuantity(productQuantity);
				 order.setUserId(userId);
				 order.setSellerId(sellerId);
				 order.setProductId(productId);
				 order.setName(getName);
				 order.setAddress(getAddress);
				 order.setVillage(getVillage);
				 order.setDistrict(getDistrict);
				 order.setPincode(Integer.parseInt(getPinCode));
				 order.setPrice(currentPrice);
				 order.setMobileNumber(Long.parseLong(getPhone));
				 
				 System.out.print(order.toString());
				 
		         OrderService orderService = new OrderService();
		         orderService.createOrder(order);
		         
		         
		            
		        }	           
		 
		 } else {
		 
		 System.out.println("error occured");
		 
		 }
		 
		 } catch (ServiceException | ValidationException e) {
		 
		 e.printStackTrace();
		 
		 }
		 
		 }
		 
		 }
		 