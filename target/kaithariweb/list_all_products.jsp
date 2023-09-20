<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.service.ProductService"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fasterxml.*"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/Seller product list.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	<header>
		<div class="logo">
			<a href="<%=request.getContextPath() %>/index.jsp"> <img
				src="<%=request.getContextPath() %>/assets/img/image-removebg-preview.png"
				alt="logo" width="100px" height="80px">
			</a>
		</div>

		<div class="back">
			<a href="<%=request.getContextPath() %>/seller/seller login.jsp">
				<button>Back</button>
			</a>
		</div>

		<h2>PRODUCTS</h2>

		<div class="navigations">

			<div class="search">
				<input type="search" placeholder="search">
			</div>

			<div class="new">
				<a href="<%=request.getContextPath() %>/product/new">
					<button>Create New</button>
				</a>
			</div>

			<div class="accound">
				<a href="<%=request.getContextPath()%>/seller/profile">
					<i class="fa fa-user-circle-o"
					style="font-size: 24px; color: black;"></i>
				</a>
			</div>

			<di v class="order"> <a
				href="<%=request.getContextPath() %>/seller products/seller_shipping_page.jsp">
				<img class="order_img"
				src="<%=request.getContextPath() %>/assets/img/Seller order bag.png">
			</a>
		</div>

		</div>
	</header>



	<%
	ProductService productList = new ProductService();
	%>
	<%
	//Set<Product> listProducts = productList.listAllProduct();
	
	int sellerId=(Integer) request.getSession().getAttribute("sellerId");
	//int sellerId = 4;
	Set<Product> productlist=new ProductService().findProductBySellerId(sellerId);
	%>


	<div class="hol"></div>


	<!--  <div class="wat">
                    <img src="../../assets/img/10.jpeg" alt="photo" width="150" height="150" />
                    <div class="product-content">
                    <h3 class="product-name">Kanchipuram Saree</h3>
                    <p class="rate">Rs. 6000 </p>
                    <s class="s1">Rs. 6,500</s>
                    <div class="star">
                    <i class="fa fa-star" style="font-size:24px"></i>
                    <i class="fa fa-star" style="font-size:24px"></i>
                    <i class="fa fa-star" style="font-size:24px"></i>
                    <i class="fa fa-star-o" style="font-size:24px"></i>
                    <i class="fa fa-star-o" style="font-size:24px"></i>

                    </div> -->
	<script>
   // const saree_list = [
//   {
//     image: { src: "../../assets/img/10.jpeg", alt: "photo" },
//     name: "Kanchivaram Saree",
//     price: { actual: "₹ 7500", current: "₹ 5200" },
//         link: "../seller products/seller products.html",
//   },

   var product_upload = <%= new ObjectMapper().writeValueAsString(productlist) %>;
   
   console.log(product_upload);
	
	// JSON.parse(localStorage.getItem("product_crud"));
    // console.log(product_upload);
   // const uniqueID_seller = JSON.parse(localStorage.getItem("uniqueID_seller"));
   
   
   
for (let i = 0; i < product_upload.length; i++) {
	
	console.log("1");
 
       //<div class=wat> </div>
       const div_wat = document.createElement("div");
       div_wat.setAttribute("class", "wat");
       console.log(div_wat);
       // link for next page
       const locateUser = document.createElement("a");
       locateUser.setAttribute(
         "href","product/details?id="+product_upload[i].id
       );
       locateUser.setAttribute("style", "text-decoration: none;color:black ");
       div_wat.append(locateUser);

       //<img> <img>
       const img_pic = document.createElement("img");
       img_pic.setAttribute("src", product_upload[i].image);
      //  img_pic.setAttribute("alt", product_upload[i].uppic);
       img_pic.setAttribute("height", "150px");
       img_pic.setAttribute("width", "150px");
       locateUser.append(img_pic);
       //<div class=product_content> </div>
       const div_product_content = document.createElement("div");
       div_product_content.setAttribute("class", "product-content");
       locateUser.append(div_product_content);
       // <h3 class=product-name> </h3>
       const h3_product_name = document.createElement("h3");
       h3_product_name.setAttribute("class", "product-name");
       h3_product_name.innerHTML = product_upload[i].name;
       div_product_content.append(h3_product_name);
       // <p class=rate> </p>
       const p_rate = document.createElement("p");
       p_rate.setAttribute("class", "rate");
       let dis=(product_upload[i].price/100)*product_upload[i].offer;
       p_rate.textContent = product_upload[i].price-dis;
     console.log(dis);
       div_product_content.append(p_rate);
       //  <s class=s1> </s>
       const s_s1 = document.createElement("s");
       s_s1.setAttribute("class", "s1");
       s_s1.innerText = product_upload[i].price;
       div_product_content.append(s_s1);
       //  <div class=star> </div>
       const div_star = document.createElement("div");
       div_star.setAttribute("class", "star");
       div_product_content.append(div_star);
       // a button
       const a_but = document.createElement("a");
       a_but.setAttribute(
         "href","product/details?id="+product_upload[i].id
       );
       div_product_content.append(a_but);
       // <button class=buy> </buy>
       //const button_buy = document.createElement("button");
       //button_buy.setAttribute("class", "buy");
       //a_but.append(button_buy);
       //  <strong> </strong>
       // const strong = document.createElement("strong");
      // strong.innerHTML = "Remove";
      // button_buy.append(strong);
       // a button
     //  const a_but_1 = document.createElement("a");
    //   a_but_1.setAttribute(
    //     "href","product/details?id="+product_upload[i].id
    //   );
   //    div_product_content.append(a_but_1);
       // <button> </buy>
       const button_buy_1 = document.createElement("button");
       button_buy_1.setAttribute("class", "run");
       button_buy_1.setAttribute("data-uuid", product_upload[i].id);
       a_but.append(button_buy_1);
       // <strong> </strong>
       const strg = document.createElement("strong");
       strg.innerHTML = "View";
       button_buy_1.append(strg);
       document.querySelector("div.hol").append(div_wat);
       
  }

</script>
</body>
</html>

