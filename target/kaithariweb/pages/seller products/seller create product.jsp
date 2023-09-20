<!DOCTYPE html>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.model.Category"%>
<%@page import="in.fssa.kaithari.service.CategoryService"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Seller Upload product</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/seller create product.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
	
	<style>
	.d-none{
	display:none;
	}
	
	</style>

</head>

<body>
	<%
	int sellerId = (Integer) request.getSession().getAttribute("sellerId");
	CategoryService cs = new CategoryService();

	Set<Category> listOfCategory = cs.listAllCategroy();
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
		<form action = "<%=request.getContextPath()%>/product/create" method = "POST">
		<input type="hidden" name="id" value="<%= sellerId%>">
			<div class="form">
				<div class="details">
					<div class="new">
						<img class="d-none"
							alt="photo" id="imgdiv">
					</div>
					<div class="details_list">
						<p class="list">Image:</p>
						<input type="url"  name ="image" value="past link here" placeholder="https://." pattern="https://.*"
							class="list_2" id="uppic">
					</div>

					<div class="details_list">
						<p class="list">Product Name:</p>
						<input type="text" name="product_name" class="list_2" placeholder="Saree"
							pattern="[a-zA-Z0-9!@#$$%^&*()_+:>?|\]+" required
							id="productname">
					</div>
					<div class="details_list">
						<p class="list">Category:</p>
						<select type="number" name="categoryId" id="categoryId" class="list_2" placeholder="others" required
							id="productreview">
							<option value="" disabled selected>Select a category</option>
							<% for (Category category : listOfCategory) { %>
							<option value="<%= category.getId() %>"><%= category.getName() %></option>
							<% } %>
						</select>
					</div>

					<div class="details_list">
						<p class="list">Price:</p>
						<input type="number" name="Price" class="list_2" placeholder="10000(Rs)"
							pattern="[0-9]{3,6}" required id="productprice">
					</div>

					<div class="flex_row">
						<div class="details_list">
							<p class="list">Offers:</p>
							<input type="number" name = "offer" class="list_3" placeholder="10"
								pattern="[0-9]{2}" required id="productoffer"><span
								class="percentage_discount">%</span>
						</div>

						<div class="details_list">
							<p class="list_1">Quantity:</p>
							<input type="number" name="quantity" min="1" class="list_4" required
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
						<input type="text" name="Design" class="list_2" required id="design">
					</div>

					<div class="details_list">
						<p class="list">Jarigai:</p>
						<input type="text" name="jarigai" class="list_2" required id="Jargai">
					</div>



					<div class="details_list">
						<p class="list">Discription:</p>
						<textarea type="text" name = "description" class="list_2"
							placeholder="*Special PriceGet extra 5% off (price inclusive of cashback/coupon)T&C."
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
	
	picInput.addEventListener("click", function() {
	    picInput.value = "";
	});

	
	picInput.addEventListener("change", function() {
	    let link = document.getElementById("uppic").value;
	    document.getElementById("imgdiv").classList.remove("d-none");
	    document.getElementById("imgdiv").setAttribute("src", link);
	});

	</script>
</body>

</html>
<!-- <a href="https://freeimage.host/"><img src="https://iili.io/HVTQc2R.jpg" alt="HVTQc2R.jpg" border="0"></a> -->