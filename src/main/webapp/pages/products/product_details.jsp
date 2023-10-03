<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.Product"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Details</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/product explore.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">

</head>

<body>
	<% Product product=(Product) request.getAttribute("productDetails"); 
	String user = (String) request.getAttribute("sellerName");
	%>

	<header>
		<jsp:include page="/header.jsp" />
	</header>
	<div class="section">
		<div class="meenu">
			<div class="product">
				<img id="imagee" src="<%=product.getImage()%>" alt="product-1" width="450px" height="450px">
			</div>

			<!-- <div class="product-1">
                    <img src="../../assets/img/10.jpeg" alt="product" width="86px" />

                    <img src="../../assets/img/10.jpeg" alt="product" width="86px" />

                    <img src="../../assets/img/10.jpeg" alt="product" width="86px" />

                    <img src="../../assets/img/10.jpeg" alt="product" width="86px" />
                    </div> -->
		</div>

		<div class="sneaker">
			<h4>KAITHTHARI</h4>

			<h2 id="product_name"></h2>
			<div class="rupeeees">

				<div>
					<p id="length">Product-length : <%=product.getLength()==5?"5.5":"8.2" %></p>
				</div>
				 <div>
					<p id="Seller">Seller : <%= user %></p>
				</div>
				<div class="akka">
					<p>Special Price</p>
					<b id="price"><%="Rs : " + (product.getPrice()-((product.getPrice()/100)*product.getOffers())) %></b> <span id="percentage"> <%=product.getOffers()+"%" %> </span>
				</div>
			</div>

			<div class="ic">
				<s id="actualprice"><%="Rs : " +product.getPrice() %></s>
			</div>

			<!-- <div class="review">
				REVIEW : <i id="star-1" class="fa fa-star-o"
					style="font-size: 24px; color: orange;"></i> <i id="star-2"
					class="fa fa-star-o" style="font-size: 24px; color: orange;"></i> <i
					id="star-3" class="fa fa-star-o"
					style="font-size: 24px; color: orange;"></i> <i id="star-4"
					class="fa fa-star-o" style="font-size: 24px; color: orange;"></i> <i
					id="star-5" class="fa fa-star-o"
					style="font-size: 24px; color: orange;"></i>

				<p id="review_count"></p>
			</div>
 -->
			<div class="content-details">
				<h3>Design-Type :</h3>
				<p id="Design"><%=product.getDesignName() %> </p>
			</div >
			<div class="content-details">
				<h3>Jarigai :</h3>
				<p id="Jarigai"><%=product.getJarigai() %></p>
			</div>

			<div class="content-details">
				<h3>Product Details</h3>
				<p id="description"><%=product.getDescription() %></p>
			</div>

			<div class="what">
				<button class="the">

					<a href="/kaithariweb/product/buy_now?id=<%=product.getId()%>"> <strong> BUY NOW </strong>
					</a> </strong>

				</button>
				
				<button class="that" ">
					<a ><i class="fa fa-shopping-cart"
						style="font-size: 15px; color: black; margin-right: 10px;"></i>ADD
						TO CART
					</a>
				</button>

			</div>

		</div>
	</div>

	<div class="washing_instruction">
		<div class="wash">
			<h3>Whashing Instructions</h3>
			<p id="instruction"></p>
		</div>
	</div>


	<div class="similar">
		<div class="h6">
			<h6>Smilar Products</h6>
		</div>

		<div class="hol">
			<div class="wat">
				<img src="<%=request.getContextPath()%>/assets/img/10.jpeg" alt="photo" width="150"
					height="150">
				<div class="product-content">
					<h3 class="product-name">Kanchi Pattu(Blue,Green,Black)</h3>
					<p class="rate">Rs : 5999</p>
					<s class="s1">Rs : 6,500</s>
				<!-- 	<div class="star">
						<i class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i>

					</div> -->

					<button class="buy">
						<a href="<%=request.getContextPath()%>/Saree details/product 2.jsp"> <strong>BUY
								NOW</strong>
						</a>
					</button>
				</div>

			</div>

			<div class="wat">
				<img src="<%=request.getContextPath()%>/assets/img/2.jpeg" alt="photo" width="150"
					height="150">
				<div class="product-content">
					<h3 class="product-name">Binthu Pattu(Blue,Green,Black)</h3>
					<p class="rate">Rs : 2999</p>
					<s class="s1">Rs : 6,500</s>
					<!-- <div class="star">
						<i class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i>

					</div> -->

					<button class="buy">
						<a href="<%=request.getContextPath()%>/Saree details/product 2.jsp"> <strong>BUY
								NOW</strong>
						</a>
					</button>
				</div>

			</div>

			<div class="wat">
				<img src="<%=request.getContextPath()%>/assets/img/3.jpeg" alt="photo" width="150"
					height="150">
				<div class="product-content">
					<h3 class="product-name">Binthu Pattu(Blue,Green,Black)</h3>
					<p class="rate">Rs : 2999</p>
					<s class="s1">Rs : 6,500</s>
					<!-- <div class="star">
						<i class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i> <i
							class="fa fa-star" style="font-size: 24px"></i>

					</div> -->

					<button class="buy">
						<a href="<%=request.getContextPath()%>/Saree details/product 2.jsp"> <strong>BUY
								NOW</strong>
						</a>
					</button>
					
					
				</div>

			</div>

		</div>
	</div>

	<section id="footer">
		<section class="footer-container">
			<div class="menu">
				<h3>contact us:</h3>
				<span class="number">+917209587436</span>

			</div>
			<div class="about">
				<h3>Menu</h3>
				<h6>
					<a href="<%=request.getContextPath()%>/index.jsp">Home</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/products/saree">Sarees</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/products/dhoti">Dothi</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/about us/about us.jsp">About us</a>
				</h6>

			</div>

			<div class="border-110"></div>

			<div class="c1">
				<h3>Saree</h3>
				<h6>
					<a href="<%=request.getContextPath()%>/products/product_details.jsp ">Kanchipuram Saree</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/Saree details/product 3.jsp">Cotton Saree</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/Saree details/product 5.jsp">Silk saree</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/Saree details/product 2.jsp">Binthu pattu</a>
				</h6>
			</div>

			<div class="border-118"></div>

			<div class="dothi">
				<h3>Dothi</h3>
				<h6>
					<a href="<%=request.getContextPath()%>/dothi/dothi product 2.jsp">othikko kattiko</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/dothi/dothi product 4.jsp">Cotton dothi</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/dothi/dothi product 3 .jsp">border dothi</a>
				</h6>
				<h6>
					<a href="<%=request.getContextPath()%>/dothi/dothi product 6.jsp">kaavi dothi</a>
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
						src="<%=request.getContextPath()%>/assets/img/linkedin-2950130-2447889.webp" alt="photo"
						width="50px">
					</a> <a href="https://github.com/"> <img
						src="<%=request.getContextPath()%>/assets/img/github-2950150-2447911.webp" alt="photo"
						width="50px">
					</a> <a href="https://www.instagram.com"> <img
						src="<%=request.getContextPath()%>/assets/img/insta.webp" alt="photo" width="50px">
					</a> <a href="https://web.telegram.org/k/"> <img class="tele"
						src="<%=request.getContextPath()%>/assets/img/tele.webp" alt="photo" width="40px"
						style="margin-bottom: 40px; margin-left: 3px;"></a>

				</div>
			</div>
		</section>
	</section>

	<script>

	<%HttpSession  session2 = request.getSession();
    //String userId = (String)session2.getAttribute("userId");
    %>

<%-- 
    function carts(e) {
        e.preventDefault();
        const addto_cart = JSON.parse(localStorage.getItem("addto_cart")) || [];
        let user_unique = <%= userId.in %>;
       
      <%  if (userId == null) { %>
      alert("You are not logged in");
            window.location.href = "../login page/logion page.html";
            return;
      <%  }else { %>

        const product_uuid = new URLSearchParams(window.location.search).get(
            "product"
        );
        const product_price = product_crud.find(
            (g) => g.product_uuid === product_uuid
        );

        const prod_data = addto_cart.find(
            (q) =>
                q.product_id === product_uuid && q.buyer_id === user_unique
        );

        if (prod_data) {
            alert("This Product Is Already Added In Your Cart Page");
        } else {
            const prod = {
                product_id: product_uuid,
                buyer_id: user_unique,
                price: product_price.productprice,
                quantity: 1,
                seller_id: product_price.seller_id
            };

            addto_cart.push(prod);
            localStorage.setItem("addto_cart", JSON.stringify(addto_cart));
            alert("Your Product Has Been Added To Your Cart");
        }
    }
 --%>

      
      const cart_products = document.querySelector("button.that");
      
      <% HttpSession session3 = request.getSession(); %>
      <% Integer userId = (Integer) session3.getAttribute("userId"); %>
      
      cart_products.addEventListener("click", () => {
          <% if (userId == null) { %>
              alert("You are not logged in");
              console.log("add to cart array");
          <% } else { %>
              
          let user_id = <%= userId.intValue() %>;
              let add_to_cart = JSON.parse(localStorage.getItem("cart")) || [];
              console.log(add_to_cart);
              let id = <%= product.getId()%>;
              
              const exist =
                  add_to_cart.length &&
                  JSON.parse(localStorage.getItem("cart")).some(
                      (data) => data.product_id == id && data.user_id == user_id 
                  );
              
              if (exist) {
                  alert("This product has already been added");
              } else {
                  alert("This product is added to your cart.");
                  
                  let productName = '<%= product.getName() %>';
                  let imageUrl = '<%= product.getImage() %>';
                  
                  add_to_cart.push({
                      product_quantity: 1,
                      seller_id: <%= product.getSellerId()%>,
                      user_id: user_id,
                      product_name: productName,
                      product_image: imageUrl,
                      product_id: <%= product.getId() %>,
                      actual_price: <%= product.getPrice() %>,
                      current_price: <%= (product.getPrice()-((product.getPrice()/100)*product.getOffers()))%>,
                      discount: <%= product.getOffers() %>
                  });
                  
                  const cart_count = add_to_cart.filter((pdt) => pdt.buyer_id === user_id).length;
                  console.log(cart_count);

                  localStorage.setItem("cart", JSON.stringify(add_to_cart));
                  
                  window.location.reload();
              }
              <% } %>

      });


        // review popup


        // myButton.addEventListener("click", function () {
        // 	myPopup.classList.add("show");
        // });
        // closePopup.addEventListener("click", function () {
        // 	myPopup.classList.remove("show");
        // });
        // window.addEventListener("click", function (event) {
        // 	if (event.target == myPopup) {
        // 		myPopup.classList.remove("show");
        // 	}
        // });


        // 
       /*  const product_upload = JSON.parse(localStorage.getItem("product_crud"));
        const product_id = new URLSearchParams(window.location.search).get("product");
        const product = product_upload.find(
            (y) => y.product_uuid === product_id
        );

        if (product) {
            const image = document.getElementById("imagee").setAttribute("src", product.image);
            const Jarigai = document.getElementById("Jarigai").innerText = product.Jarigai;
            const Design = document.getElementById("Design").innerText = product.Design_Name;
            const length = document.getElementById("length").innerText = "length : " + product.selectedValue;
            const name = (document.getElementById("product_name").innerText = product.productname);
            const price = (document.getElementById("price").innerText = "Rs:"+product.discountprice);
            const actual_price = (document.getElementById("actualprice").innerText ="Rs:"+ product.productprice);
            const description = (document.getElementById("description").innerText = product.descrip);
            const dpercentage = (document.getElementById("percentage").innerText = product.productoffer+"% off");
        }
 */
        // wasing instruction

        const Cotton_Saree =

            " Machine wash or hand wash in cold or lukewarm water." + "     " + " Use a mild detergent suitable for delicate fabrics." +
            "  Avoid using bleach or harsh chemicals." + "                   " + " Gently wash and rinse the saree." +
            " Avoid wringing or twisting the fabric." + "                  " + "  Hang the saree to dry in a shaded area, away from direct sunlight." +
            "  Iron the saree at a low to medium heat setting if necessary."
        const Silk_Saree =


            " Dry clean is the recommended method for silk sarees.." + "                 " + "  Avoid washing at home unless specified as washable silk." +
            "  If handwashing is required, use a gentle silk-specific detergent.." + "     " + " Gently soak the saree in cold water for a short time." +
            " Avoid rubbing or scrubbing the fabric.." + "                               " + "  Rinse with cold water and carefully squeeze out excess water." +
            "  Hang the saree to dry in a shaded area, away from direct sunlight.." + "    " + " Iron the saree at a low heat setting or use a steamer."
        const Dhoti =

            "  wash or hand wash in cold or lukewarm water." + "          " + " Use a mild detergent suitable for cotton fabrics." +
            "  Avoid using bleach or harsh chemicals." + "                " + " Gently wash and rinse the vesti." +
            " Tumble dry on low heat or hang it to dry." + "            " + "  Iron the vesti at a medium to high heat setting if necessary."

        /* const instruction = document.getElementById("instruction");

        if (product.productreview == "Silk Saree") {
            instruction.innerText = Silk_Saree;

        } else if (product.productreview == "Dhoti") {
            instruction.innerText = Cotton_Vesti;

        } else if (product.productreview == "Pumpar Cotton Saree") {

            instruction.innerText = Cotton_Saree;
        } */



        function already() {
            const uniqueID_user = localStorage.getItem("uniqueID_user");
            if (uniqueID_user) {
                window.location.href = `/buy now page/buy now details.jsp?product=${product_id}`;
            } else {
                window.location.href = request.getContextPath() +"/register page/rigister page.jsp";
            }
        }

       
    </script>
</body>

</html>