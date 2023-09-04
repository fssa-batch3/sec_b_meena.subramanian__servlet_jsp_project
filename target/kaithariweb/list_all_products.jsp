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
</style>

</head>
<body>
    <%
	ProductService productList = new ProductService();
	%>
	<%
	Set<Product> listProducts = productList.listAllProduct();
	%>
	<table border=1>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			
		</tr>
		<% for(Product products : listProducts){ %>
		<tr>
			<td><%= products.getId() %></td>
			<td><%= products.getName() %></td>
			<td><%= products.getDescription() %></td>
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