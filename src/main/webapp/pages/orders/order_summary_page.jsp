<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders Summary</title>

    <link rel="stylesheet" href="../../assets/css/order_summary_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

</head>

<body>

    
     <header>
<jsp:include page="/header.jsp" />
</header>


    <div class="container">
        <div class="iphone">
            <div class="flex">
                <div class="flex_left">
                    <div class="flexHeader">
                        <div class="order-summary">
                            <div class="order-status">Arriving date</div>
                            <div id="orderDate">
                                19 April, 2023
                            </div>
                            <div id="orderDay">
                                Friday
                            </div>
                        </div>
                        <!-- <div class="action-btn">
                        <div class="back-btn"><i class="far fa-long-arrow-left"></i></div>
                    </div> -->
                    </div>
                    <div class="hero-img-container">
                        <div class="triangle1"></div>
                        <div class="arc"></div>
                        <div class="pattern"></div>
                        <img id="productImage" class="hero-img">
                    </div>
                </div>
                <div class="flex_right">

                    <div class="order-details-container">

                        <div class="odc-wrapper">
                            <div class="odc-header-line">
                                Your order details
                            </div>

                            <div class="product-container">
                                <div class="product">
                                    <div class="product-photo">
                                        <img id="reference_image" src="../../assets/img/5.jpeg" class="img-photo">
                                    </div>
                                    <div class="product-desc">
                                        <span class="orderText" id="lastchild">
                                        </span>
                                        <span class="orderText" id="firstchild"></span>
                                    </div>
                                    <div class="product-desk">
                                        <span class="orderText" id="lastchild1"></span>
                                        <span class="orderText" id="firstchild2"></span>

                                    </div>
                                </div>

                            </div>
                            <hr>

                            <div class="shipping-desc">Delivery Address</div>

                            <div class="shipping-address">
                                <p id="buyer_name"></p>
                                <p id="buyer_address"></p>
                                <p id="buyer_town"></p>
                                <p id="buyer_city"></p>
                            </div>
                            <hr>

                            <div class="shipping-desc">Order Summary</div>
                            <div class="order-desc">
                                <div>
                                    <p class="price">Total Price :</p>
                                </div>
                                <div>
                                    <p id="total_price" class="price"></p>
                                </div>
                                <!-- <button class="review_button" id="myButton">Review The Product</button> -->
                            </div>
                        </div>
                        <div id="myPopup" class="popup">
                            <div class="popup-content">

                                <div class="containerDiv">
                                    <div class="post">
                                        <div class="text">Thanks for rating us!</div>
                                    </div>
                                    <div class="star-widget">
                                        <input type="radio" name="rate" id="rate-5">
                                        <label for="rate-5" class="fas fa-star"></label>
                                        <input type="radio" name="rate" id="rate-4">
                                        <label for="rate-4" class="fas fa-star"></label>
                                        <input type="radio" name="rate" id="rate-3">
                                        <label for="rate-3" class="fas fa-star"></label>
                                        <input type="radio" name="rate" id="rate-2">
                                        <label for="rate-2" class="fas fa-star"></label>
                                        <input type="radio" name="rate" id="rate-1">
                                        <label for="rate-1" class="fas fa-star"></label>
                                        <form class="reviewForm" action="#">
                                            <header class="comment"></header>
                                            <div class="textarea">
                                                <textarea cols="30" id="text_area" placeholder="Describe your experience.."></textarea>
                                            </div>
                                            <div class="btn" id="btn">
                                                <button class="btnPost" type="button" id="post_btn">Post </button>
                                            </div>
                                            <!-- <button id="closePopup">
                                                Cancel
                                            </button> -->
                                        </form>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <button class="review_button" id="myButton">Review The Product</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
    <script>

        myButton.addEventListener("click", function () {
            myPopup.classList.add("show");
        });
        // closePopup.addEventListener("click", function () {
        // 	myPopup.classList.remove("show");
        // });
        window.addEventListener("click", function (event) {
            if (event.target == myPopup) {
                myPopup.classList.remove("show");
            }
        });


        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const order_id = urlParams.get("order_id");


        const order_list = JSON.parse(localStorage.getItem("order_list")) || [];
        const uniqueID_user = JSON.parse(localStorage.getItem("uniqueID_user"));
        const order_user = order_list.filter((e) => e.uniqueID_user === uniqueID_user);
        console.log(order_user);

        const unique_id = order_user.find((e) => e.order_uuid === order_id);
        console.log(unique_id);


        const product_crud = JSON.parse(localStorage.getItem("product_crud"));
        const product = product_crud.filter((e) => e.product_uuid === unique_id.product_id);
        console.log(product);

        const add_address = JSON.parse(localStorage.getItem("add_address"));
        const address = add_address.filter((e) => e.address_uuid === unique_id.user_adress);
        console.log(address);

        const dateStr = unique_id.order_date; // Wrap the dateStr in quotes to make it a string
        console.log(dateStr)
        const date = new Date(dateStr);
        date.setDate(date.getDate() + 7); // Add 7 days to the current date
        // Array of month names
        const months = [
            "January", "February", "March", "April", "May", "June", "July",
            "August", "September", "October", "November", "December"
        ];
        // Array of weekday names
        const weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
        // Get the day, month, and year
        const day = date.getDate();
        const month = months[date.getMonth()];
        const year = date.getFullYear();
        // Get the weekday
        const weekday = weekdays[date.getDay()];
        // Format the date string
        const formattedDate = `${day} ${month}, ${year}`;
        const formattedWeekday = weekday;
        document.getElementById("orderDate").innerText = formattedDate;
        document.getElementById("orderDay").innerText = formattedWeekday;

        document.getElementById("productImage").src = product[0].uppic;
        document.getElementById("reference_image").src = product[0].uppic;
        const productname = document.getElementById("lastchild").innerText = product[0].productname;
        const catagory = document.getElementById("firstchild").innerText = product[0].productreview;
        const price = document.getElementById("lastchild1").innerText = "₹" + product[0].discountprice;
        const Quantity = document.getElementById("firstchild2").innerText = "Qty :" + unique_id.quantity;
        const buyer_name = document.getElementById("buyer_name").innerText = address[0].name;
        const buyer_address = document.getElementById("buyer_address").innerText = address[0].street;
        const buyer_town = document.getElementById("buyer_town").innerText = address[0].town;
        const buyer_city = document.getElementById("buyer_city").innerText = address[0].country + "  - " + add_address[0].zip;
        const total_price = document.getElementById("total_price").innerText = "₹" + product[0].discountprice * unique_id.quantity;


        const post_btn = document.getElementById("post_btn");
        post_btn.addEventListener("click", function () {
            const review_data=JSON.parse(localStorage.getItem("review_data"))||[];

            const content=document.getElementById("text_area").value;

            let selectedRating = document.querySelector('input[name="rate"]:checked');

                let ratingValue = selectedRating.id.split("-")[1];  
              
                    review_data.push({
                        "product_uuid":unique_id.product_id,
                        "user_id":uniqueID_user,
                        "rating":parseInt(ratingValue),
                        "content":content,
                    });

                    document.getElementById("text_area").value="";

                    localStorage.setItem(("review_data"),JSON.stringify(review_data));

                    myPopup.classList.remove("show");

                   
               
        
        })




    </script>
</body>

</html>