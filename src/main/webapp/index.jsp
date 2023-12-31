<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/home.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
<style>
      /* Style for the container holding the cards */
.hol {
    display: flex;
    /* justify-content: space-around; */
    align-items: center;
    margin-top: 15px;    
    /* flex-wrap: wrap; */
    /* gap: 20px; */
}

/* Style for individual cards */
.card {
  width: 245px;/* Adjust the card width as needed */
  border: 1px solid #ddd;
  padding: 20px;
  text-align: center;
  background-color: #f5f5f5;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Style for card images */
.card img {
    max-width: 100%;
    height: 213px;
}

/* Style for card headings */
.card h2 {
  margin-top: 10px;
  font-size: 1.5rem; /* Adjust the font size as needed */
}

/* Style for card links */
.card a {
  text-decoration: none;
  color: #333;
}

/* Hover effect for cards */
.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
}

    </style>

</head>


<body>
	<header>
		<jsp:include page="/header.jsp" />
	</header>

	<section class="adds">
		<div class="content">
			<h4>Weave Your Dream Look</h4>
			<p>
				Handloom fabrics are generally made with high quality using <br>
				natural fibres like cotton, linen, silk, and wool which are
				resilient and last for a long time
			</p>
		</div>
		<div>
			<img src="./assets/img/adds 2.webp" alt="photo">
		</div>
	</section>
	<section class="products-container">
		<div class="border-1"></div>

		<h2 class="trent">OUR PRODUCTS</h2>

		<div class="border-2"></div>

		<div class="hol">
			<div class="card">
			<a href="<%=request.getContextPath() %>/products/saree">
				<img src="<%=request.getContextPath()%>/assets/img/homepage1.jpg" alt="Card 1">
				<h2>Silk Sarees</h2>
				</a>
			</div>
			<div class="card">
			<a href="<%=request.getContextPath() %>/products/saree">
				<img src="<%=request.getContextPath()%>/assets/img/5.jpeg" alt="Card 2">
				<h2>Cotton Sarees</h2>
			</a>
			</div>
			<div class="card">
			<a href="<%=request.getContextPath() %>/products/dhoti">
				<img src="<%=request.getContextPath()%>/assets/img/or.webp"alt="Card 3">
				<h2>Dhotis</h2>
				</a>
			</div>
		</div>

	</section>
	<section class="aboutus">
		<div class="par">
			<strong>About us</strong> <br> <b>The History of Handloom</b>
			<p>In the olden times, people actively used charkha for spinning
				cotton to make it into a fabric. In each and every village of India,
				a separate weavers community is present which produced Handwoven and
				Handspun fabrics from small instruments like using Charkhas. But
				during the British rule, many things turned upside down for the
				handloom sector of our country.</p>
			<a href="./pages/about us/about us.jsp" style="color: black;">
				<button class="parr">
					<b style="font-size: 15px;">Learn More</b>
				</button>
			</a>
		</div>

		<div class="about img">
			<img src="./assets/img/adds 3.png" alt="photo" width="500px">
		</div>
	</section>
	<section id="footer">
		<section class="footer-container">
			<div class="menu">
				<h3>Contact us:</h3>
				<span class="number">+917209587436</span>

			</div>
			<div class="about">
				<h3>Products</h3>
				<h6>
					<a href="index.jsp">Home</a>
				</h6>
				<h6>
					<a href="./pages/products/product_list saree.jsp">Sarees</a>
				</h6>
				<h6>
					<a href="./pages/products/product_list dothi.jsp">Dhoti</a>
				</h6>
				<h6>
					<a href="./pages/about us/about us.jsp">About us</a>
				</h6>

			</div>

			<div class="border-110"></div>

			<div class="c1">
				<h3>Saree</h3>
				<h6>
					<a href="./pages/products/product_details.jsp ">Kanchipuram
						Saree</a>
				</h6>
				<h6>
					<a href="./pages/Saree details/product 5.jsp">Cotton Saree</a>
				</h6>
				<h6>
					<a href="./pages/Saree details/product 6.jsp">Banaras pattu</a>
				</h6>
				<h6>
					<a href="./pages/Saree details/product 2.jsp">Binthu pattu</a>
				</h6>
			</div>

			<div class="border-118"></div>

			<div class="dothi">
				<h3>Dothi</h3>
				<h6>
					<a href="./pages/dothi/dothi product 2.jsp">Othikko kattiko</a>
				</h6>
				<h6>
					<a href="./pages/dothi/dothi product 4.jsp">Cotton Dhoti</a>
				</h6>
				<h6>
					<a href="./pages/dothi/dothi product 3 .jsp">Prakasam Dhoti</a>
				</h6>
				<h6>
					<a href="./pages/dothi/dothi product 6.jsp">kaavi Dhoti</a>
				</h6>

			</div>
		</section>

		<section class="foot">
			<div class="footer-2">
				<div class="copy">
					<p>Copyright 2023@kaithary company</p>
					<p>Allright's reserved</p>
				</div>

				<div class="icons">
					<h4>Contact us</h4>
					<a href="https://in.linkedin.com/"> <img
						src="./assets/img/linkedin-2950130-2447889.webp" alt="photo"
						width="50px"></a> <a href="https://github.com/"> <img
						src="./assets/img/github-2950150-2447911.webp" alt="photo"
						width="50px"></a> <a href="https://www.instagram.com"> <img
						src="./assets/img/insta.webp" alt="photo" width="50px">
					</a> <a href="https://web.telegram.org/k/"> <img class="tele"
						src="./assets/img/tele.webp" alt="photo" width="40px"
						style="margin-bottom: 5px; margin-left: 3px;"></a>

				</div>
			</div>
		</section>
	</section>

	<!-- <script>
        const product = JSON.parse(localStorage.getItem("product_crud"));

        for (let i = product.length - 1; i >= product.length - 6; i--) {
            //<div class=wat> </div>
            const div_wat = document.createElement("div");
            div_wat.setAttribute("class", "wat");
            console.log(div_wat);
            //  <img> <img>
            const img_pic = document.createElement("img");
            img_pic.setAttribute("src", product[i].uppic);
            img_pic.setAttribute("alt", product[i].uppic);
            img_pic.setAttribute("data-unique", product[i].product_uuid);
            img_pic.setAttribute("height", "150px");
            img_pic.setAttribute("width", "150px");
            div_wat.append(img_pic);
            //    <div class=product_content> </div>
            const div_product_content = document.createElement("div");
            div_product_content.setAttribute("class", "product-content");
            div_wat.append(div_product_content);
            // <h3 class=product-name> </h3>
            const h3_product_name = document.createElement("h3");
            h3_product_name.setAttribute("class", "product-name");
            h3_product_name.innerHTML = product[i].productname;
            div_product_content.append(h3_product_name);
            // <p class=rate> </p>
            const p_rate = document.createElement("p");
            p_rate.setAttribute("class", "rate");
            p_rate.innerHTML = "₹"+product[i].discountprice;
            div_product_content.append(p_rate);
            //  <s class=s1> </s>
            const s_s1 = document.createElement("s");
            s_s1.setAttribute("class", "s1");
            s_s1.innerHTML ="Rs : "+ product[i].productprice;
            div_product_content.append(s_s1);
            //  <div class=star> </div>
            const div_star = document.createElement("div");
            div_star.setAttribute("class", "star");
            div_product_content.append(div_star);
            // a button
            const a_but = document.createElement("a");
            a_but.setAttribute(
                "href",
                `../pages/products/product_details.jsp?product=${product[i].product_uuid}`
            );
            div_product_content.append(a_but);
            // <button class=buy> </buy>
            const button_buy = document.createElement("button");
            button_buy.setAttribute("class", "buy");
            a_but.append(button_buy);
            // <strong> </strong>
            const strong = document.createElement("strong");
            strong.innerHTML = "BUY NOW";
            button_buy.append(strong);
            document.querySelector("div.hol").append(div_wat);
        }
    </script> -->

</body>

</html>