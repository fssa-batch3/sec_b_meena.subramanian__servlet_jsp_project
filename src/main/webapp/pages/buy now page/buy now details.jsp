<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@page import="in.fssa.kaithari.model.User"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Now Details</title>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/buy now details.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

</head>

<body>
<% 
User user = (User) request.getAttribute("userDetails");
Product productService = (Product) request.getAttribute("productDetails");
%>

     <header>
<jsp:include page="/header.jsp" />
</header>
    <div class="total">

        <div class="left">
            <div class="image">
                <img id="imagee" alt="photo" height="460px" width="400px" src="<%= productService.getImage() %>">
                                                                
            </div>
            <!-- <div class="sub-images">
                    <img class="s1" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    <img class="s2" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    <img class="s3" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    <img class="s4" src="../../assets/img/10.jpeg" alt="photo" height="80px" width="80px" />
                    </div> -->
        </div>
        <form action="buy_now" method="POST">
        <input type="hidden" name="product_id" value="<%= productService.getId() %>">
        <input type="hidden" name="user_id" value="<%= user.getId() %>">
        <input type="hidden" name="seller_id" value="<%= productService.getSellerId() %>">
        <input type="hidden" name="price" id="fixed" value="<%= (productService.getPrice()-((productService.getPrice()/100)*productService.getOffers())) %>">
        
              
    
            <div class="right">
                <h2> Kaithari </h2>
                <h3 id="product_name" name="product_name"><%= productService.getName() %></h3>
                <h4> Special price </h4>
                <p>
                    <strong id="price" ><%="Rs : " + (productService.getPrice()-((productService.getPrice()/100)*productService.getOffers())) %></strong>
                    <s id="actualprice" name="actualprice">Rs : <%= productService.getPrice() %></s>
                    <b id="percentage" name="percentage"><%= productService.getOffers() %> %</b>
                </p>
             <div class="form_list">
                    <div class="form">
                        <label> Quantity : </label>
                    </div>
                    <div class="form_input">
                        <input type="number" name="quantity" id="quantity" min="1" max="10" value="1" required>
                    </div>
                </div>
                <p id="stock_alert" style="color:red;"></p>
                <h2 class="pers"> PERSONAL DETAILS </h2>

                <div class="form_list">
                        <div class="form">
                            <label> Name:</label>
                        </div>
                        <div class="form_input">
                            <input class="name" name="name" value = <%= user.getName() %> type="text" id="name" placeholder="name" required="true">
                        </div>
                    </div> 
                <div class="form_list">
                        <div class="form">
                            <label> Address: </label>
                        </div>
                        <div class="form_input">
                            <input type="text" name="address" id="address" value = <%= user.getAddress() %> required="true" placeholder="32/27 street,veeravanalur">
                            <br>
                            <input type="text" name="village"  id="village" value = <%= user.getVillage() %>  required="true" placeholder="veeravanallur">
                            <br>
                            <input class="c2"  name="pincode" type="text" value = <%= user.getPincode()%>  id="pincode" placeholder="Pincode" required="true">
                            <br>
                            <input type="text" name="district"  id="district" value = <%= user.getDistrict() %>  required="true" placeholder="Tirunelveli">
                            
                        </div>
                    </div> 

                 <div class="form_list">
                        <div class="form">
                            <label> Mobile number:</label>
                        </div>
                        <div class="form_input">
                            <input type="tel" name="mobile_number" value = <%= user.getMobileNumber() %>  pattern="[6-9]{1}[0-9]{9}" id="phone" placeholder="+919876543201" required>
                        </div>
                    </div> 
                <div class="cash">
                    <p class="payment"> Payment Method: </p>
                    <div class="radio">
                        <label> Cash On Delivery </label>
                    </div>
                </div>

               
                    <button class="place" type="submit" id="PlaceOrder_bn">
                        <b> PLACE ORDER </b>
                    </button>
            </div>
        </form>
    </div>

   
    <script>
   var productQuantity = <%=productService.getQuantity()%>;
    let stockAlert = document.getElementById("stock_alert");
    console.log(stockAlert);
    console.log(productQuantity);
    let placeOrderButton = document.getElementById("PlaceOrder_bn");

    if (parseInt(productQuantity) < 10 && parseInt(productQuantity) > 0) {
    	stockAlert.style.display = "block";
        stockAlert.innerText = "Only " + productQuantity + " stock left. Hurry up....";
    } else if (parseInt(productQuantity) === 0) {
        stockAlert.innerText = "Out of Stock";
        placeOrderButton.style.opacity = "0.3";
        placeOrderButton.style.pointerEvents = "none";
    } else {
        stockAlert.style.display = "none";
    }

    document.getElementById("quantity").addEventListener("change",function(){
    	
    	document.getElementById("price").value = document.getElementById("fixed").value*document.getElementById("quantity").value;
    	
    })
    </script>

</body>

</html>