<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Detail</title>
<style>

.title {
	color: grey;
	font-size: 18px;
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
		<h1><%=product.getName()%></h1>
		<p class="title"><%=product.getCategory_id()%></p>
		<p><%=product.getDescription()%></p>
		<p><%=product.getPrice()%></p>
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
