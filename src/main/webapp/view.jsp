<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Detail</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    .card {
        width: 300px;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
    }
    h1 {
        font-size: 24px;
        color: #333;
        margin-bottom: 10px;
    }
    .title {
        color: grey;
        font-size: 18px;
    }
    p {
        margin-top: 10px;
        font-size: 16px;
        color: #555;
    }
</style>
</head>
<body>
	<%
	Product product = (Product) request.getAttribute("productDetails");
	System.out.println(product);
	if (product != null) {
	%>
	<div class="card">
		<h1>Name:<%=product.getName()%></h1>
		<p class="title">CategoryId:<%=product.getCategory_id()%></p>
		<p>ProductId:<%=product.getId() %></p>
		<p>Description:  <%=product.getDescription()%></p>
		<p>Price:<%=product.getPrice()%></p>
	</div>
	<%
	} else {
	%>
	<p>Product Not Found.</p>
	<%
	}
	%>
</body>
</html>
