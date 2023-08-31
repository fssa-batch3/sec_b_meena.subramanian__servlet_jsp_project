<%@page import="in.fssa.kaithari.service.ProductService"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
</head>
<body>
<%
Product product = (Product) request.getAttribute("product");

System.out.print(product.getName());
%>

<div>
	   <h2>Product ID: <%= product.getId() %></h2>
    
</div>

<div class="container">
    <h2>Update User</h2>
  <form action = "update" method = "POST">
        <input type="hidden" name="id" type="number" value="<%=product.getId() %>">
		<label for="name">Name</label> 
        <input type="text" name="product_name" value="<%=product.getName() %>" required><br>
        
        <label for="description">Description</label>
        <input type="text" name="description" value="<%=product.getDescription() %>" required> <br>
        
        <label for="categoryId">Category ID</label>
        <input type="number" name="categoryId" value="<%=product.getCategory_id() %>" required> <br>
        
        <label for="Price">Price</label> 
        <input type="number" name="Price" value="<%=product.getPrice() %>" required><br>
        
        <button type="submit">Update</button>	
        </form>
     </div>
</body>
</html>

