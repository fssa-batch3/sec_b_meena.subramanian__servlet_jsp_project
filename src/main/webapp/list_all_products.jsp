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
        }
        table {
            width: 50%;
            margin: 20px auto;
            text-align: center;
        }
        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
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