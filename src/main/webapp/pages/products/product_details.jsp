<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>

    <link rel="stylesheet" href="../../assets/css/product explore.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <div class="section">
        <div class="meenu">
            <div class="product">
                <img id="imagee" alt="product-1" width="450px" height="450px">
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
                    <p id="length">Product-length : </p>
                </div>

                <div class="akka">
                    <p>Special Price</p>
                    <b id="price"></b>
                    <span id="percentage">
                    </span>
                </div>
            </div>

            <div class="ic">
                <s id="actualprice">₹ 7500</s>
            </div>

            <div class="review">
                REVIEW :
                <i id="star-1" class="fa fa-star-o" style="font-size:24px; color:orange;"></i>
                <i id="star-2" class="fa fa-star-o" style="font-size:24px; color:orange;"></i>
                <i id="star-3" class="fa fa-star-o" style="font-size:24px; color:orange;"></i>
                <i id="star-4" class="fa fa-star-o" style="font-size:24px; color:orange;"></i>
                <i id="star-5" class="fa fa-star-o" style="font-size:24px; color:orange;"></i>

                <p id="review_count"></p>
            </div>

            <div class="content-details">
                <h3>Design-Type : </h3>
                <p id="Design"></p>
            </div>
            <div class="content-details">
                <h3>Jarigai : </h3>
                <p id="Jarigai"></p>
            </div>

            <div class="content-details">
                <h3>Product Details</h3>
                <p id="description"></p>
            </div>

            <div class="what">
                <button class="the">

                    <a onclick="already()">
                        <strong> BUY NOW </strong>
                    </a> </strong>

                </button>

                <button class="that" onclick="carts(event)">
                    <a>
                        <i class="fa fa-shopping-cart" style="font-size:15px; color:black; margin-right: 10px;"></i>ADD
                        TO CART
                    </a>
                </button>

                <button class="heart" onclick="whish(event)">
                    <a>
                        <i class="fa fa-heart" style="font-size:15px; color:black;">
                            <strong>Whislist</strong>
                        </i>
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
                <img src="../../assets/img/10.jpeg" alt="photo" width="150" height="150">
                <div class="product-content">
                    <h3 class="product-name">Kanchi Pattu(Blue,Green,Black)</h3>
                    <p class="rate">₹ 5999</p>
                    <s class="s1">₹ 6,500</s>
                    <div class="star">
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>

                    </div>

                    <button class="buy">
                        <a href="../Saree details/product 2.jsp">
                            <strong>BUY NOW</strong>
                        </a>
                    </button>
                </div>

            </div>

            <div class="wat">
                <img src="../../assets/img/2.jpeg" alt="photo" width="150" height="150">
                <div class="product-content">
                    <h3 class="product-name">Binthu Pattu(Blue,Green,Black)</h3>
                    <p class="rate">₹ 2999</p>
                    <s class="s1">₹ 6,500</s>
                    <div class="star">
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>

                    </div>

                    <button class="buy">
                        <a href="../Saree details/product 2.jsp">
                            <strong>BUY NOW</strong>
                        </a>
                    </button>
                </div>

            </div>

            <div class="wat">
                <img src="../../assets/img/3.jpeg" alt="photo" width="150" height="150">
                <div class="product-content">
                    <h3 class="product-name">Binthu Pattu(Blue,Green,Black)</h3>
                    <p class="rate">₹ 2999</p>
                    <s class="s1">₹ 6,500</s>
                    <div class="star">
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>
                        <i class="fa fa-star" style="font-size:24px"></i>

                    </div>

                    <button class="buy">
                        <a href="../Saree details/product 2.jsp">
                            <strong>BUY NOW</strong>
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
                    <a href="../../index.jsp">Home</a>
                </h6>
                <h6>
                    <a href="../products/product_list saree.jsp">Sarees</a>
                </h6>
                <h6>
                    <a href="../products/product_list dothi.jsp">Dothi</a>
                </h6>
                <h6>
                    <a href="../about us/about us.jsp">About us</a>
                </h6>

            </div>

            <div class="border-110">

            </div>

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

            <div class="border-118">
            </div>

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
                    <a href="https://in.linkedin.com/">
                        <img src="../../assets/img/linkedin-2950130-2447889.webp" alt="photo" width="50px">
                    </a>
                    <a href="https://github.com/">
                        <img src="../../assets/img/github-2950150-2447911.webp" alt="photo" width="50px">
                    </a>
                    <a href="https://www.instagram.com">
                        <img src="../../assets/img/insta.webp" alt="photo" width="50px">
                    </a>
                    <a href="https://web.telegram.org/k/">
                        <img class="tele" src="../../assets/img/tele.webp" alt="photo" width="40px"
                            style="margin-bottom: 40px; margin-left: 3px;"></a>

                </div>
            </div>
        </section>
    </section>

    <script>









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
        const product_upload = JSON.parse(localStorage.getItem("product_crud"));
        const product_id = new URLSearchParams(window.location.search).get("product");
        const product = product_upload.find(
            (y) => y.product_uuid === product_id
        );

        if (product) {
            const image = document.getElementById("imagee").setAttribute("src", product.uppic);
            const Jarigai = document.getElementById("Jarigai").innerText = product.Jarigai;
            const Design = document.getElementById("Design").innerText = product.Design_Name;
            const length = document.getElementById("length").innerText = "length : " + product.selectedValue;
            const name = (document.getElementById("product_name").innerText = product.productname);
            const price = (document.getElementById("price").innerText = `₹${product.discountprice}`);
            const actual_price = (document.getElementById("actualprice").innerText = `₹${product.productprice}`);
            const description = (document.getElementById("description").innerText = product.descrip);
            const dpercentage = (document.getElementById("percentage").innerText = `${product.productoffer}% off`);
        }

        // wasing instruction

        const Cotton_Saree =

            "✦ Machine wash or hand wash in cold or lukewarm water." + "     " + "✦ Use a mild detergent suitable for delicate fabrics." +
            " ✦ Avoid using bleach or harsh chemicals." + "                   " + "✦ Gently wash and rinse the saree." +
            "✦ Avoid wringing or twisting the fabric." + "                  " + " ✦ Hang the saree to dry in a shaded area, away from direct sunlight." +
            " ✦ Iron the saree at a low to medium heat setting if necessary."
        const Silk_Saree =


            "✦ Dry clean is the recommended method for silk sarees.." + "                 " + " ✦ Avoid washing at home unless specified as washable silk." +
            " ✦ If handwashing is required, use a gentle silk-specific detergent.." + "     " + "✦ Gently soak the saree in cold water for a short time." +
            "✦ Avoid rubbing or scrubbing the fabric.." + "                               " + " ✦ Rinse with cold water and carefully squeeze out excess water." +
            " ✦ Hang the saree to dry in a shaded area, away from direct sunlight.." + "    " + "✦ Iron the saree at a low heat setting or use a steamer."
        const Cotton_Vesti =

            " ✦ wash or hand wash in cold or lukewarm water." + "          " + "✦ Use a mild detergent suitable for cotton fabrics." +
            " ✦ Avoid using bleach or harsh chemicals." + "                " + "✦ Gently wash and rinse the vesti." +
            "✦ Tumble dry on low heat or hang it to dry." + "            " + " ✦ Iron the vesti at a medium to high heat setting if necessary."

        const instruction = document.getElementById("instruction");

        if (product.productreview == "Silk Saree") {
            instruction.innerText = Silk_Saree;

        } else if (product.productreview == "Dhoti") {
            instruction.innerText = Cotton_Vesti;

        } else if (product.productreview == "Pumpar Cotton Saree") {

            instruction.innerText = Cotton_Saree;
        }



        function already() {
            const uniqueID_user = localStorage.getItem("uniqueID_user");
            if (uniqueID_user) {
                window.location.href = `../buy now page/buy now details.html?product=${product_id}`;
            } else {
                window.location.href = "../register page/rigister page.jsp";
            }
        }

        function carts(e) {
            e.preventDefault();
            const addto_cart = JSON.parse(localStorage.getItem("addto_cart")) || [];
            const user_unique = JSON.parse(localStorage.getItem("uniqueID_user"));
            const product_crud = JSON.parse(localStorage.getItem("product_crud"));
            if (!user_unique) {
                window.location.href = "../login page/logion page.jsp";
                return;
            }

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

        function whish(e) {
            e.preventDefault();
            const whish_list = JSON.parse(localStorage.getItem("whish_list")) || [];

            const user_unique = JSON.parse(localStorage.getItem("uniqueID_user"));

            const condition = JSON.parse(localStorage.getItem("uniqueID_user"));
            if (!condition) {
                window.location.href = "../login page/logion page.jsp";
                return;
            }

            const product_uuid = new URLSearchParams(window.location.search).get(
                "product"
            );

            const prod_data = whish_list.find(
                (r) =>
                    r.product_id === product_uuid && r.buyer_id === user_unique
            );

            if (prod_data) {
                alert("This Product Is Already Added In Your whishlist Page");
            } else {
                const prod = {
                    product_id: product_uuid,
                    buyer_id: user_unique,
                };

                whish_list.push(prod);
                localStorage.setItem("whish_list", JSON.stringify(whish_list));
                alert("Your Product Has Been Added To Your whiahlist");
            }
        }
        // rating show star

        const review_data = JSON.parse(localStorage.getItem("review_data"));
        let rating = 0;

        const find_review = review_data.filter(e => e.product_uuid === product_id);

        if (find_review.length < 1) {
            rating = 0
        } else {

            for (let i = 0; i < find_review.length; i++) {
                rating += parseInt(find_review[i].rating);
            }
            let average_rating = Math.floor(rating / find_review.length);

            document.getElementById("review_count").innerText = "reviewed by " + find_review.length+" people";



            for (let i = 1; i <= average_rating; i++) {
                document.getElementById("star-" + i).setAttribute("class", "fa fa-star");
            }

        }




    </script>
</body>

</html>