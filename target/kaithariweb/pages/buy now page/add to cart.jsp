<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add To Cart</title>

<link rel="stylesheet" href="../../assets/css/add to cart.css">
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
		<div class="item-count">
			<span>3</span>
		</div>
	</header>



	<div class="change">
		<p id="change_add">Change Address</p>
	</div>

	<div class="addcar"></div>

	<div class="total">
		<div class="tax">
			<p id="tot">Total</p>
		</div>

		<div class="all">
			<p id="totalPrice"></p>
		</div>
	</div>

	<button id="buy_all_button" class="buy_all_button">
		<!-- <a href="../login page/logion page.html"> -->
		<b>BUY NOW</b>
		<!-- </a> -->
	</button>

	<div class="extra"></div>

	<section id="footer">
		<section class="footer-container">
			<div class="menu">
				<h3>contact us:</h3>
				<span class="number">+917209587436</span>

			</div>
			<div class="about">
				<h3>Menu</h3>
				<h6>
					<a href="../../index.jsp">Home</a>
				</h6>
				<h6>
					<a href="../products/product_list saree.jsp">Sarees</a>
				</h6>
				<h6>
					<a href="../products/product_list dothi.jsp">Dhothi</a>
				</h6>
				<h6>
					<a href="../about us/about us.jsp">About us</a>
				</h6>

			</div>

			<div class="border-110"></div>

			<div class="c1">
				<h3>Saree</h3>
				<h6>
					<a href="../products/product_details.jsp ">Kanchipuram Saree</a>
				</h6>
				<h6>
					<a href="../Saree details/product 3.jsp">Cotton Saree</a>
				</h6>
				<h6>
					<a href="../Saree details/product 5.jsp">Silk saree</a>
				</h6>
				<h6>
					<a href="../Saree details/product 2.jsp">Binthu pattu</a>
				</h6>
			</div>

			<div class="border-118"></div>

			<div class="dothi">
				<h3>Dothi</h3>
				<h6>
					<a href="../dothi/dothi product 2.jsp">Othikko kattiko</a>
				</h6>
				<h6>
					<a href="../dothi/dothi product 4.jsp">Cotton dhothi</a>
				</h6>
				<h6>
					<a href="../dothi/dothi product 3 .jsp">Border dhothi</a>
				</h6>
				<h6>
					<a href="../dothi/dothi product 6.jsp">Kaavi dhothi</a>
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
						src="../../assets/img/linkedin-2950130-2447889.webp" alt="photo"
						width="50px"></a> <a href="https://github.com/"> <img
						src="../../assets/img/github-2950150-2447911.webp" alt="photo"
						width="50px"></a> <a href="https://www.instagram.com"> <img
						src="../../assets/img/insta.webp" alt="photo" width="50px"></a>
					<a href="https://web.telegram.org/k/"> <img class="tele"
						src="../../assets/img/tele.webp" alt="photo" width="40px"
						style="margin-bottom: 35px; margin-left: 3px;"></a>

				</div>
			</div>
		</section>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
	<!-- <script>

        let cart_avilable = false;
        const addto_cart = JSON.parse(localStorage.getItem("addto_cart"));
        const user_unique = JSON.parse(localStorage.getItem("uniqueID_user"));
        const product_crud = JSON.parse(localStorage.getItem("product_crud"));
        let total = 0;
        for (let i = 0; i < addto_cart.length; i++) {
            if (addto_cart[i].buyer_id === user_unique) {

                const prod_data = product_crud.find(product => product.product_uuid === addto_cart[i].product_id);
                console.log(prod_data);

               if (prod_data.length === 0) {
                    const para = document.createElement("p");
                    para.innerText = "No Products";
                    div_details.append(para);

                    document.querySelector("div.addcar").append(para)
                }
                else {
                    //  div_tag
                    const div_tag = document.createElement("div");
                    div_tag.setAttribute("class", "tag");

                    // img
                    const img = document.createElement("img");
                    img.setAttribute("src", prod_data.uppic);
                    img.setAttribute("alt", "photo");
                    div_tag.append(img);

                    // div_details
                    const div_details = document.createElement("div");
                    div_details.setAttribute("class", "details");
                    div_tag.append(div_details);

                    // para
                    const para = document.createElement("p");
                    para.innerText = prod_data.productname;
                    div_details.append(para);

                    // h6
                    const h6 = document.createElement("h6");
                    div_details.append(h6);

                    // a
                    const a = document.createElement("button");
                    a.setAttribute("class", "remove");
                    a.setAttribute("id", "remove");
                    // a.setAttribute("onclick", "remove(event,prod_data.product_uuid)")
                    a.innerText = "Delete";
                    a.onclick = function (event) {
                        remove(event, prod_data.product_uuid);
                    };
                    h6.append(a);

                    // div
                    const div_quan = document.createElement("div");
                    div_quan.setAttribute("class", "quan");
                    div_quan.setAttribute("data-id", addto_cart[i].product_id);
                    div_tag.append(div_quan);

                    // input
                    const input = document.createElement("input");
                    input.setAttribute("type", "number");
                    input.setAttribute("class", "quantity");
                    input.setAttribute("min", "1");
                    input.setAttribute("value", addto_cart[i].quantity);
                    div_quan.append(input);

                    // div
                    const div_ten = document.createElement("div");
                    div_ten.setAttribute("class", "ten");
                    div_ten.innerText = `₹ ${prod_data.productprice * addto_cart[i].quantity}`;
                    div_tag.append(div_ten);

                    let total = 0;
                    for (let k = 0; k < addto_cart.length; k++) {
                        total += prod_data.productprice * addto_cart[i].quantity;
                    }
                    document.getElementById("totalPrice").innerText = total;

                    document.querySelector("div.addcar").append(div_tag);
                }
            }
        }

        const update_quan = document.querySelectorAll("input.quantity");
        update_quan.forEach((findUuid) => {
            findUuid.addEventListener("click", (e) => {
                const parent = e.currentTarget.parentNode;
                const ids = parent.dataset.id;
                console.log(ids);
                function quantity(f) {
                    return f.product_id === ids;
                }
                const quan_data = addto_cart.find(quantity);
                const values = parent.querySelector(".quantity").value;
                quan_data.quantity = values;
                console.log(quan_data);
                localStorage.setItem("addto_cart", JSON.stringify(addto_cart));
                window.location.reload();
            });
        });

        function remove(e, uniqueid) {
            if (!e || typeof uniqueid !== "string") {
                return;
            }

            e.preventDefault();

            const addto_carts = JSON.parse(localStorage.getItem("addto_cart") || []);
            const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));

            const index = addto_carts.findIndex(
                (item) => item.product_id === uniqueid && item.buyer_id === uniqueID_user
            );

            if (index !== -1 && window.confirm("Are you sure you want to remove your product")) {
                addto_carts.splice(index, 1);
                localStorage.setItem("addto_cart", JSON.stringify(addto_carts));
                window.location.reload();
            }
        }


        // for buy all function

        const order_all_bn = document.getElementById("buy_all_button");

        order_all_bn.addEventListener("click", function () {
            const order_list = JSON.parse(localStorage.getItem("order_list")) || [];
            const cart_list = addto_cart.filter((user) => user.buyer_id === user_unique);
            const add_address = JSON.parse(localStorage.getItem("add_address"));
            const user_d_address = add_address.find(
                (add) => add.uniqueID_user === user_unique && add.default === true
            );

            for (let i = 0; i < cart_list.length; i++) {
                let order_uuid = uuidv4();
                order_list.push({
                    order_uuid: order_uuid,
                    product_id: cart_list[i].product_id,
                    quantity: cart_list[i].quantity,
                    uniqueID_user: user_unique,
                    user_address: user_d_address,
                });
            }

            localStorage.setItem("order_list", JSON.stringify(order_list));
            for (let i = 0; i < cart_list.length; i++) {
                let find_cart = cart_list[i];
                let find_index = addto_cart.indexOf(find_cart);
                addto_cart.splice(find_index, 1);
            }
            localStorage.setItem("addto_cart", JSON.stringify(addto_cart));
            window.location.href="../orders/my orders.html"
            alert('all products successfuly orderd to default address✅');
            
        });
    </script> -->


	<script>

        const addto_cart = JSON.parse(localStorage.getItem("addto_cart"));
        const user_unique = JSON.parse(localStorage.getItem("uniqueID_user"));
        const product_crud = JSON.parse(localStorage.getItem("product_crud"));
        let total = 0;

        const order_all_bn = document.getElementById("buy_all_button");
        const total_p = document.getElementById("tot");


        const cart_list = addto_cart.filter(user => user.buyer_id === user_unique);

        if (cart_list.length === 0) {
            const para = document.createElement("p");
            para.innerText = "There is No products Added in this page";
            para.setAttribute("class", "no_product")
            document.querySelector("div.addcar").append(para);
            order_all_bn.style.display = "none";
            total_p.style.display = "none";
        }
        else {
            for (let i = 0; i < addto_cart.length; i++) {
                if (addto_cart[i].buyer_id === user_unique) {

                    const prod_data = product_crud.find(product => product.product_uuid === addto_cart[i].product_id);
                    console.log(prod_data);


                    //  div_tag
                    const div_tag = document.createElement("div");
                    div_tag.setAttribute("class", "tag");

                    // img
                    const img = document.createElement("img");
                    img.setAttribute("src", prod_data.uppic);
                    img.setAttribute("alt", "photo");
                    div_tag.append(img);

                    // div_details
                    const div_details = document.createElement("div");
                    div_details.setAttribute("class", "details");
                    div_tag.append(div_details);

                    // para
                    const para = document.createElement("p");
                    para.innerText = prod_data.productname;
                    div_details.append(para);

                    // h6
                    const h6 = document.createElement("h6");
                    div_details.append(h6);

                    // a
                    const a = document.createElement("button");
                    a.setAttribute("class", "remove");
                    a.setAttribute("id", "remove");
                    // a.setAttribute("onclick", "remove(event,prod_data.product_uuid)")
                    a.innerText = "Delete";
                    a.onclick = function (event) {
                        remove(event, prod_data.product_uuid);
                    };
                    h6.append(a);

                    // div
                    const div_quan = document.createElement("div");
                    div_quan.setAttribute("class", "quan");
                    div_quan.setAttribute("data-id", addto_cart[i].product_id);
                    div_tag.append(div_quan);

                    // input
                    const input = document.createElement("input");
                    input.setAttribute("type", "number");
                    input.setAttribute("class", "quantity");
                    input.setAttribute("min", "1");
                    input.setAttribute("value", addto_cart[i].quantity);
                    div_quan.append(input);

                    // div
                    const div_ten = document.createElement("div");
                    div_ten.setAttribute("class", "ten");
                    div_ten.innerText = `₹ ${prod_data.discountprice * addto_cart[i].quantity}`;
                    div_tag.append(div_ten);

                    let total = 0;
                    for (let k = 0; k < addto_cart.length; k++) {
                        total = "₹" + prod_data.discountprice * addto_cart[k].quantity;
                    }
                    document.getElementById("totalPrice").innerText = total;

                    document.querySelector("div.addcar").append(div_tag);
                }
            }
        }
        const update_quan = document.querySelectorAll("input.quantity");
        update_quan.forEach((findUuid) => {
            findUuid.addEventListener("click", (e) => {
                const parent = e.currentTarget.parentNode;
                const ids = parent.dataset.id;
                console.log(ids);
                function quantity(f) {
                    return f.product_id === ids;
                }
                const quan_data = addto_cart.find(quantity);
                const values = parent.querySelector(".quantity").value;
                quan_data.quantity = values;
                console.log(quan_data);
                localStorage.setItem("addto_cart", JSON.stringify(addto_cart));
                window.location.reload();
            });
        });

        function remove(e, uniqueid) {
            if (!e || typeof uniqueid !== "string") {
                return;
            }

            e.preventDefault();

            const addto_carts = JSON.parse(localStorage.getItem("addto_cart") || []);
            const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));

            const index = addto_carts.findIndex(
                (item) => item.product_id === uniqueid && item.buyer_id === uniqueID_user
            );

            if (index !== -1 && window.confirm("Are you sure you want to remove your product")) {
                addto_carts.splice(index, 1);
                localStorage.setItem("addto_cart", JSON.stringify(addto_carts));
                window.location.reload();
            }
        }


        // for buy all function



        order_all_bn.addEventListener("click", function () {

            const order_list = JSON.parse(localStorage.getItem("order_list")) || [];

            const add_address = JSON.parse(localStorage.getItem("add_address"));
            const user_d_adress = add_address.find(add => add.uniqueID_user === user_unique && add.default === true)

            for (let i = 0; i < cart_list.length; i++) {
                let order_uuid = uuidv4();
                let order_date=new Date();
            const formate_order_date=`${order_date.getFullYear()}-0${order_date.getMonth() + 1}-${order_date.getDate()}`;
                order_list.push({
                    "order_date":formate_order_date,
                    "order_uuid": order_uuid,
                    "product_id": cart_list[i].product_id,
                    "quantity": cart_list[i].quantity,
                    "uniqueID_user": user_unique,
                    "user_adress": user_d_adress.address_uuid,
                    "seller_id":cart_list[i].seller_id,
                    "shipped":false
                });

                minus_quantity( cart_list[i].quantity, cart_list[i].product_id)

            }

            localStorage.setItem("order_list", JSON.stringify(order_list));
            for (let i = 0; i < cart_list.length; i++) {
                let find_cart = cart_list[i];
                let find_index = addto_cart.indexOf(find_cart);
                addto_cart.splice(find_index, 1);

            }
            localStorage.setItem("addto_cart", JSON.stringify(addto_cart));
            window.location.href = "../orders/my orders.jsp"
            alert('All products successfuly added in orderd page to default address✅');


        });

        function minus_quantity(qty,product_id){
            const product_crud=JSON.parse(localStorage.getItem("product_crud"));

            let find_product=product_crud.find((e)=>e.product_uuid===product_id);

            find_product.Quantity=parseInt(find_product.Quantity)-qty;

            localStorage.setItem("product_crud",JSON.stringify(product_crud));
        };


        const change_add = document.getElementById("change_add");
        change_add.addEventListener("click",function(){
            window.location.href='../profile page/youraddress.jsp'
        })

    </script>

</body>

</html>