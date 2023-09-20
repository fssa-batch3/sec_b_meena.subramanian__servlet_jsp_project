<%@page import="in.fssa.kaithari.model.Category"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.service.CategoryService"%>
<%@page import="in.fssa.kaithari.service.ProductService"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/seller product edit.css">
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

	<%
	int sellerId = (Integer) request.getSession().getAttribute("sellerId");

	%>

	<header>
		<div class="logo">
			<a href="<%=request.getContextPath()%>/index.jsp"> <img
				src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png"
				alt="logo" width="100px" height="80px"></a>
		</div>

		<h1 class="up" style="margin-top: 30px; color: crimson;">UPLOADE
			YOUR PRODUCTS</h1>

		<div class="navigations">

			<div class="accound">
				<a href="<%=request.getContextPath()%>/pages/seller/Seller profile.jsp">
					<i class="fa fa-user-circle-o"
					style="font-size: 24px; color: black;"></i>
				</a>
			</div>
		</div>
	</header>

	<h2>ADD NEW</h2>
	<section class="profile_details">
		<form action = "<%=request.getContextPath()%>/product/update" method = "POST">
		<input type="hidden" name="id" value="<%= product.getId()%>">
			<div class="form">
				<div class="details">
					<div class="new">
						<img class="d-none" src="<%=product.getImage() %>"
							alt="photo" id="imgdiv">
					</div>
					<div class="details_list">
						<p class="list">Image:</p>
						<input type="url"  name ="image" value="<%=product.getImage() %>" placeholder="https://." pattern="https://.*"
							class="list_2" id="uppic">
					</div>

					<div class="details_list">
						<p class="list">Product Name:</p>
						<input type="text" name="product_name" class="list_2"  value="<%=product.getName() %>" placeholder="Saree"
							pattern="[a-zA-Z0-9!@#$$%^&*()_+:>?|\]+" required
							id="productname">
					</div>
					<div class="details_list">
						<p class="list">Category:</p>
						<select type="number" name="categoryId"   value="<%=product.getCategory_id()%>" id="categoryId" class="list_2" required
							id="productreview">
							<option value="" disabled selected>Select a category</option>
							<% for (Category category : listOfCategory) { %>
							<option value="<%= category.getId() %>"><%= category.getName() %></option>
							<% } %>
						</select>
					</div>

					<div class="details_list">
						<p class="list">Price:</p>
						<input type="number" name="Price"  value="<%=product.getPrice() %>" class="list_2" 
							pattern="[0-9]{3,6}" required id="productprice">
					</div>

					<div class="flex_row">
						<div class="details_list">
							<p class="list">Offers:</p>
							<input type="number"  value="<%=product.getOffers() %>" name = "offer" class="list_3" placeholder="10"
								pattern="[0-9]{2}" required id="productoffer"><span
								class="percentage_discount">%</span>
						</div>

						<div class="details_list">
							<p class="list_1">Quantity:</p>
							<input type="number"  value="<%=product.getQuantity() %>" name="quantity" min="1" class="list_4" required
								id="Quantity">
						</div>
					</div>

					<div class="details_list">
						<p class="list">Length:</p>
						<div class="length_option">
							<input value="5" type="radio" name="length_radio">5.5
							Meter <input value="8" type="radio" name="length_radio"
								class="meete">8.2 Meter

						</div>

					</div>

					<div class="details_list">
						<p class="list">Design Name:</p>
						<input type="text" name="Design"  value="<%=product.getDesignName()%>" class="list_2" required id="design">
					</div>

					<div class="details_list">
						<p class="list">Jarigai:</p>
						<input type="text" name="jarigai"   value="<%=product.getJarigai() %>" class="list_2" required id="Jargai">
					</div>



					<div class="details_list">
						<p class="list">Discription:</p>
						<textarea type="text" name = "description" class="list_2" 							placeholder="*Special PriceGet extra 5% off (price inclusive of cashback/coupon)T&C."
							pattern="[a-zA-Z0-9!@#$$%^&*()_+:>?|\]+" required id="descrip"></textarea>
					</div>

					<!-- <p class="pattern">Price and offer should be in number</p> -->
				</div>
				<button type="submit" class="save">
					<strong>Upload</strong>
				</button>

			</div>
		</form>
	</section>
	<script>
	
	let picInput=document.getElementById("uppic");
	
	picInput.addEventListener("change", function() {
	    let link = document.getElementById("uppic").value;
	    document.getElementById("imgdiv").classList.remove("d-none");
	    document.getElementById("imgdiv").setAttribute("src", link);
	});
	document.getElementById("descrip").value="<%= product.getDescription() %>";

	</script>
</body>
</html>

