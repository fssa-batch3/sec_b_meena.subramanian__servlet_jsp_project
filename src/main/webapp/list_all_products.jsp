<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.service.ProductService"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        border: 1px solid #dddddd;
        padding: 8px;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #d9d9d9;
    }
    td a {
        text-decoration: none;
        color: #007bff;
    }
    td button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 5px 10px;
        border-radius: 3px;
        cursor: pointer;
    }
    td button:hover {
        background-color: #0056b3;
    }
    
    
     .header {
            background-color: #333;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .profile-icon {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: #fff; /* Change the background color */
            /* You can use a real image URL here for the profile picture */
            /* background-image: url('path/to/profile-image.png'); */
            background-size: cover;
            background-position: center;
            margin-right: 10px;
        }

        .profile-link {
            color: white;
            text-decoration: none;
        }
</style>

</head>
<body>

<a href="NewProductServlet"><button type="submit">Add Product</button></a>

    <%
	ProductService productList = new ProductService();
	%>
	<%
	//Set<Product> listProducts = productList.listAllProduct();
	
	Set<Product> productlist=(Set<Product>)request.getAttribute("productDetails");
	%>
	<table border=1>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>CategoryId</th>
			<th>Price</th>
			
		</tr>
		<% for(Product products : productlist){ %>
		<tr>
			<td><%= products.getId() %></td>
			<td><%= products.getName() %></td>
			<td><%= products.getDescription() %></td>
			<td><%= products.getCategory_id() %></td>
			<td><%= products.getPrice()%></td>
			<td>
			<a href="product/details?id=<%= products.getId()%>">
            	<button class="view" type="submit">View</button>
            	</a>
            </td>
            <td>
            <a href="product/edit?id=<%=products.getId() %>">
            <button  class="update" type="submit">Update</button>
            </a>
            	
            </td>
            <td>
                <a href="product/delete?id=<%=products.getId() %>">
            	<button class="delete" type="submit">Delete</button>
            	</a>
            </td>
		</tr>
		<% } %>
	</table>
</body>
</html>

