<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Now Details</title>

    <link rel="stylesheet" href="../../assets/css/buy now details.css">
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
        <!-- <div class="logo">
                <a href="../../index.html"><img src="../../assets/img/image-removebg-preview.png" alt="logo" width="100px"
                height="80px"></a>
                </div>

                <div class="nav">
                <ul>
                <li><a href="../products/product_list saree.html">Sarees</a></li>
                <li><a href="../products/product_list dothi.html">Dothis</a></li>
                <li><a href="../about us/about us.html">About us</a></li>
                <li><a href="#">Contact</a></li>

                </ul>
                </div>
                <div class="navigations">

                <div class="search">
                <input type="search" placeholder="search">
                </div>

                <div class="cart">
                <a href="../buy now page/add to cart.html"><i class="fa fa-shopping-cart"
                style="font-size:24px; color:black;"></i>
                </div>

                <div class="accound">
                <a href="../profile page/profile page.html"><i class="fa fa-user-circle-o"
                style="font-size:24px;color: black;"></i>
                </a>
                </div>

                <div class="order">
                <a href="../orders/my orders.html"><i class="fa fa-shopping-bag"
                style="font-size:22px; color:black"></i></a>
                </div>

                <div class="favorite">
                <a href="../whislist/wishlist.html"><i class="fa fa-heart"
                style="font-size: 22px; color:black;"></i></a>
                </div>

                </div> -->
    
    <div class="total">

        <div class="left">
            <div class="image">
                <img id="imagee" alt="photo" height="460px" width="400px">
            </div>
            <!-- <div class="sub-images">
                    <img class="s1" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    <img class="s2" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    <img class="s3" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    <img class="s4" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    </div> -->
        </div>
        <form onsubmit="buyNow(event)">
            <div class="right">
                <h2> Kaithari </h2>
                <h3 id="product_name"></h3>
                <h4> Special price </h4>
                <p>
                    <strong id="price"></strong>
                    <s id="actualprice"></s>
                    <b id="percentage"></b>
                </p>

                <h2 class="pers"> PERSONAL DETAILS </h2>

                <!-- <div class="form_list">
                        <div class="form">
                            <label> Name: </label>
                        </div>
                        <div class="form_input">
                            <input class="name" type="text" id="name" placeholder="name" required="true">
                        </div>
                    </div> -->
                <!-- <div class="form_list">
                        <div class="form">
                            <label> Address: </label>
                        </div>
                        <div class="form_input">
                            <input type="text" id="address" required="true" placeholder="32/27 street,veeravanalur">
                            <br>
                            <input type="text" id="district" required="true" placeholder="Tirunelveli">
                            <br>
                            <input class="c2" type="text" id="pincode" placeholder="Pincode" required="true">
                        </div>
                    </div> -->

                <!-- <div class="form_list">
                        <div class="form">
                            <label> Mobile number: </label>
                        </div>
                        <div class="form_input">
                            <input type="tel" pattern="[6-9]{1}[0-9]{9}" id="phone" placeholder="+919876543201" required>
                        </div>
                    </div> -->

                <div class="form_list">
                    <div class="form">
                        <label> Quantity :</label>
                    </div>
                    <div class="form_input">
                        <input type="number" id="quantity" min="1" value="1" required>
                    </div>
                </div>
                <p id="stock_alert" style="color:red;">Only 5 stock left. HURRY UP....</p>

                <div class="card">
                    <div class="name">
                        <h3 id="add_name">Name</h3>
                    </div>
                    <div class="details">
                        <p id="add_street">70 Ram nagar street</p>
                        <p id="add_town">madippakam</p>
                        <p id="add_city_zip">Chennai,60001</p>
                        <p>India</p>
                        <p id="add_phone">+91 7418679291</p>
                    </div>
                    <div class="defa">
                        <a id="change_adress">change address</a>
                    </div>
                </div>

                <div class="cash">
                    <p class="payment"> Payment Method: </p>
                    <div class="radio">
                        <label> Cash On Delivery </label>
                    </div>
                </div>

               
                    <button class="place" id="PlaceOrder">
                        <b> PLACE ORDER </b>
                    </button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>

    <script>
        const product_upload = JSON.parse(localStorage.getItem("product_crud"));
        const product_id = new URLSearchParams(window.location.search).get("product");
        const product = product_upload.find((product) => product.product_uuid === product_id);
        const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
        const order_list = JSON.parse(localStorage.getItem("order_list")) || [];
        const user_cred = JSON.parse(localStorage.getItem("user_cred"));


        const stoct_alert=document.getElementById("stock_alert");
        const PlaceOrder_bn=document.getElementById("PlaceOrder");

     
            if(parseInt(product.Quantity)<10 && parseInt(product.Quantity)>0){
                stoct_alert.innerText="Only "+ product.Quantity +" stock left. Hurry up....";
            }else if(parseInt(product.Quantity)==0){
                stoct_alert.innerText="Out of Stock";
                PlaceOrder_bn.style.opacity="0.3";
                PlaceOrder_bn.style.pointerEvents ="none";
            }
            else{
                stoct_alert.style.display="none";
            }

   

        const add_quan = document.querySelector("#quantity");
        add_quan.addEventListener("click", () => {
            const { value } = document.querySelector("#quantity");
            const normalPrice = product.productprice * value;
            // let actualPrice = normalPrice

            // if (product.productoffer == product.productoffer) {
            let actualPrice = normalPrice - (normalPrice * product.productoffer) / 100;
            actualPrice = Math.round(actualPrice);




            // console.log(actualPrice)

            const actual_price = (document.getElementById("actualprice").innerText = `₹${normalPrice}`);
            const price = (document.getElementById("price").innerText = `₹${actualPrice}`);
        });

        const address_list = JSON.parse(localStorage.getItem("add_address"));
        console.log(address_list);

        const user_default_adress = address_list.find(e => e.uniqueID_user === uniqueID_user && e.default === true)
        console.log(user_default_adress);

        // get address element from html
        const add_name = document.getElementById('add_name').innerText = user_default_adress.name;
        const add_street = document.getElementById("add_street").innerText = user_default_adress.street;
        const add_town = document.getElementById("add_town").innerText = user_default_adress.town;
        const add_city_zip = document.getElementById("add_city_zip").innerText = user_default_adress.country + ',' + user_default_adress.zip;
        const add_phone = document.getElementById("add_phone").innerText = user_default_adress.phone;

        //  for change adress

        const change_adress = document.getElementById('change_adress')

        if (product) {
            const image = document.getElementById("imagee").setAttribute("src", product.uppic);
            const name = (document.getElementById("product_name").innerText = product.productname);
            const price = (document.getElementById("price").innerText = `₹${product.discountprice}`);

            const actual_price = (document.getElementById("actualprice").innerText = `₹${product.productprice}`);

            const dpercentage = (document.getElementById("percentage").innerText = `${product.productoffer}% off`);
        }
       

        function PlaceOrder(e) {
            return e.email === uniqueID_user;
        }
        const person_data = user_cred.find(PlaceOrder);

        function buyNow(e) {
            e.preventDefault();

            //   const name = document.getElementById("name").value;
            //   const address = document.getElementById("address").value;
            //   const pincode = document.getElementById("pincode").value;
            //   const mobile = document.getElementById("phone").value;
            const quantity = document.getElementById("quantity").value;
            //   const district = document.getElementById("district").value;
            const user_adress = user_default_adress.address_uuid;
            const order_uuid = uuidv4();
            let order_date=new Date();
            const formate_order_date=`${order_date.getFullYear()}-0${order_date.getMonth() + 1}-${order_date.getDate()}`;
            
            const product_uuid = new URLSearchParams(window.location.search).get(
                "product"
            );
            order_list.push({
                order_date:formate_order_date,
                user_adress: user_adress,
                quantity,
                order_uuid,
                uniqueID_user,
                product_id: product_uuid,
                seller_id:product.seller_id,
                shipped:false

            });
            minus_quantity(quantity);
            localStorage.setItem("order_list", JSON.stringify(order_list));
            // window.location.href = "../orders/my orders.html"
                location.href="../../index.jsp";
                alert("Your Order Has Been Placed✅")

        }

        function minus_quantity(qty){
            const product_crud=JSON.parse(localStorage.getItem("product_crud"));

            let find_product=product_crud.find((e)=>e.product_uuid===product_id);

            find_product.Quantity=parseInt(find_product.Quantity)-qty;

            localStorage.setItem("product_crud",JSON.stringify(product_crud));
        };


        change_adress.addEventListener('click', function () {
            location.href = "../profile page/youraddress.jsp";
        })

    </script>

</body>

</html>