<%@page import="in.fssa.kaithari.model.Category"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.service.CategoryService"%>
<%@page import="in.fssa.kaithari.service.ProductService"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h2 {
            color: #333;
        }

        .container {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="hidden"] {
            display: none;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    
</head>
<body>
<%
Product product = (Product) request.getAttribute("product");

System.out.print(product.getName());
CategoryService cs=new CategoryService();

Set<Category> listOfCategory=cs.listAllCategroy();

String categoryName="";
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
        
        <label for="categoryId">Category:</label>
	<select name="categoryId" id="categoryId" required>
	<%for(Category category : listOfCategory){
		if(category.getId() == product.getCategory_id()){
			categoryName=category.getName();
		}
		
	} %>
    <option value="<%=product.getCategory_id()%>" selected><%= categoryName%></option>
    <% for (Category category : listOfCategory) { %>
        <option value="<%= category.getId() %>"><%= category.getName() %></option>
    <% } %>
	</select>
        
        <label for="Price">Price</label> 
        <input type="number" name="Price" value="<%=product.getPrice() %>" required><br>
        
        <button type="submit">Update</button>	
        </form>
     </div>
</body>
</html>

