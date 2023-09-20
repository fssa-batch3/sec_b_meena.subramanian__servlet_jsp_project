
<!DOCTYPE html>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@page import="in.fssa.kaithari.model.User"%>
<%@page import="in.fssa.kaithari.model.Order"%>
<%@page import="java.util.Set"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Orders</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/my orders.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">

</head>

<body>

	<header>
		<jsp:include page="/header.jsp" />
	</header>

	<%
	User user = (User) request.getAttribute("userDetails");
	Set<Order> order = (Set<Order>) request.getAttribute("orderList");
	List<Product> products=(List<Product>) request.getAttribute("productDetails");
	%>
	<div class="rightside">
		<div class="he">
			<img src="<%=request.getContextPath() %>/assets/img/shipped-131964753257167520.png"
				alt="delivered" width="50px" height="50px">
			<h1>My Orders</h1>
		</div>
		<div class="cards">
			<!-- <i class="fa fa-trash-o" style="color:black"></i> -->
		</div>
	</div>

	<!-- <div class="orders">
                <div class="card">
                    <img src="../../assets/img/4.jpeg" alt="saree" width="200px" height="230px">
                </div>
                <div class="card-1">
                    <div class="card-content">
                        <h3>Silk Saree</h3>
                        <span class="searial">#35453</span>
                        <p>Colorfull,Free size saree</p>
                        <p>Color:Pink</p>
                        <p>1 item</p>
                        <hr>
                        <p>Cancel Order</p>
                        <p>Shopping From:United States</p>
                    </div>
                </div>

                <div class="cost">
                    <div class="deliver">
                        <h2>
                            <i class="fa fa-rupee">100</i>
                        </h2>
                        <h4>VAT Included</h4>
                        <div class="deliver-logo">
                            <img src="../../assets/img/shipped-131964753257167520.png" alt="photo" width="30px" height="30px">
                            <p>Delivered</p>
                        </div>
                    </div>
                </div>
                
            </div> -->

	<!-- <div class="orders">
                <div class="card">
                    <img src="../../assets/img/3.jpeg" alt="saree" width="200px" height="230px">
                </div>
    
                <div class="card-1">
                    <div class="card-content">
                        <h3>Kanchipuram Pattu </h3>
                        <span class="searial">#35453</span>
                        <p>Colorfull,Free size saree</p>
                        <p>Color:green and pink</p>
                        <p>1 item</p>
                        <hr>
                        <p>Shopping From:United States</p>
                    </div>
                </div>
    
                <div class="cost">
                    <div class="deliver">
                        <h2>
                            <i class="fa fa-rupee">400</i>
                        </h2>
                        <h4>VAT Included</h4>
                        <div class="deliver-logo">
                            <img src="../../assets/img/shipped-131964753257167520.png" alt="photo" width="30px" height="30px">
                            <p>Delivered</p>
                        </div>
                    </div>
                </div>

            </div> -->

	<!-- </div> -->

	<section id="footer">
		<section class="footer-container">
			<div class="menu">
				<h3>contact us:</h3>
				<img src="<%=request.getContextPath() %>/assets/img/apple-phone.png" alt="photo" width="30px"
					height="30px"> <span class="number">7209587436</span>

			</div>
			<div class="about">
				<h3>Menu</h3>
				<h6>
					<a href="<%=request.getContextPath() %>/index.jsp">Home</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath() %>/products/product_list saree.jsp">Sarees</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath() %>/products/product_list dothi.jsp">Dothi</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath() %>/about us/about us.jsp">About us</a>
				</h6>

			</div>

			<div class="c1">
				<h3>Saree</h3>
				<h6>
					<a href="<%=request.getContextPath() %>/products/product_details.jsp ">Kanchipuram Saree</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath() %>/Saree details/product 3.jsp">Cotton Saree</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath() %>/Saree details/product 5.jsp">Silk saree</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath() %>/Saree details/product 2.jsp">Binthu pattu</a>
				</h6>
			</div>

			<div class="border-118"></div>

			<div class="dothi">
				<h3>Dothi</h3>
				<h6>
					<a href="../dothi/dothi product 2.jsp">othikko kattiko</a>
				</h6>
				<h6>
					<a href="../dothi/dothi product 4.jsp">Cotton dothi</a>
				</h6>
				<h6>
					<a href="../dothi/dothi product 3 .jsp">border dothi</a>
				</h6>
				<h6>
					<a href="../dothi/dothi product 6.jsp">kaavi dothi</a>
				</h6>

			</div>
		</section>

		<section class="foot">
			<div class="footer-2">
				<div class="copy">
					<p>Copyright 2022@kaithary company</p>
					<p>Allright reserved</p>
				</div>

				<div class="icons">
					<h4>Contact us</h4>
					<a href="https://in.linkedin.com/"> <img
						src="<%=request.getContextPath() %>/assets/img/linkedin-2950130-2447889.webp" alt="photo"
						width="50px">
					</a> <a href="https://github.com/"> <img
						src="<%=request.getContextPath() %>/assets/img/github-2950150-2447911.webp" alt="photo"
						width="50px">
					</a> <a href="https://www.instagram.com"> <img
						src="<%=request.getContextPath() %>/assets/img/insta.webp" alt="photo" width="50px">
					</a> <a href="https://web.telegram.org/k/"> <img class="tele"
						src="<%=request.getContextPath() %>/assets/img/tele.webp" alt="photo" width="40px"
						style="margin-bottom: 40px; margin-left: 3px;">
					</a>

				</div>
			</div>
		</section>
	</section>


	<script>

	let orderArray=<%= new ObjectMapper().writeValueAsString(order) %>;
	
	
	
	let productList=<%= new ObjectMapper().writeValueAsString(products) %>;

	
        for (let i = 0; i < orderArray.length; i++){ 
        	
        	
				console.log(productList);
        		console.log(orderArray[i].productId);
                let productData = productList.find(e => e.id === orderArray[i].productId);

                // Create the main container div
                const ordersContainer = document.createElement("div");
                ordersContainer.classList.add("orders");

                // Create the card div
                const cardDiv = document.createElement("div");
                cardDiv.classList.add("card");

                // Create the image element
                const image = document.createElement("img");
                image.src = productData.image;
                image.alt = "saree";
                image.style.cursor = "pointer";
                image.setAttribute('data-id', orderArray[i].id);
                image.setAttribute('class', 'product_1');
               
                // Append the image to the card div
                cardDiv.appendChild(image);

                // Create the card content div
                const cardContentDiv = document.createElement("div");
                cardContentDiv.classList.add("card_content");

                // Create the heading element
                const heading = document.createElement("h3");
                heading.setAttribute('style', 'font-size:25px;')
                heading.textContent = productData.name;
                heading.style.cursor = "pointer";
                // heading.addEventListener("click", function () {
                //     window.location.href = `${window.location.origin}/pages/orders/order_summary_page.html?order=${productData.order_uuid}`;
                // });


                // Create the quantity paragraph
                const quantity = document.createElement("p");
                quantity.classList.add("quantity");
                quantity.textContent = "quantity:" + orderArray[i].buyQuantity;


                const cancelOrder = document.createElement("p");
                cancelOrder.classList.add("cancel_order");
                cancelOrder.textContent = "cancel order";
                cancelOrder.setAttribute("id", orderArray[i].id)

                // Append the heading and quantity to the card content div

                cardContentDiv.appendChild(heading);
                cardContentDiv.appendChild(quantity);
                cardContentDiv.appendChild(cancelOrder);
              
                // Create the cost div
                const costDiv = document.createElement("div");
                costDiv.classList.add("cost");


                let paragraph = document.createElement('p');
                paragraph.setAttribute('class', 'product_price');
                paragraph.setAttribute('style', 'font-size: 11px; margin-top: -30px; margin-bottom: 30px; color:#7d8993;');
                paragraph.innerHTML = "delivered by " ;

                // Create the product price paragraph
                const productPrice = document.createElement("p");
                productPrice.classList.add("product_price");
                productPrice.setAttribute('style', 'font-size:19px;')
                productPrice.innerText = "Rs : " + productData.price * orderArray[i].buyQuantity;


                // Create the free shipping paragraph
                const freeShipping = document.createElement("p");
                freeShipping.classList.add("free_shipping");
                freeShipping.textContent = "free shipping";

                // Append the product price and free shipping to the cost div
                costDiv.appendChild(paragraph);
                costDiv.appendChild(productPrice);
                costDiv.appendChild(freeShipping);

                // Append the card div, card content div, and cost div to the orders container
                ordersContainer.appendChild(cardDiv);
                ordersContainer.appendChild(cardContentDiv);
                ordersContainer.appendChild(costDiv);


                document.querySelector("div.cards").append(ordersContainer);
        }

//URL Params
const bookCovers = document.querySelectorAll(".product_1");
        bookCovers.forEach((bookCover) => {
            bookCover.addEventListener("click", (event) => {
                const person_data = bookCover.dataset.id;
                window.location.href = `./order_summary_page.jsp?order_id=${person_data}`;
            });
        });


    </script>

</body>

</html>