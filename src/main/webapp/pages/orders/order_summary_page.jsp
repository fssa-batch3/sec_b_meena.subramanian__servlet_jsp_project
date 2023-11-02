<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.Order"%>
<%@page import="in.fssa.kaithari.model.User"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders Summary</title>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/order_summary_page.css">
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

<% Product product=(Product) request.getAttribute("productDetails"); %>
<% User user=(User) request.getAttribute("userDetails"); %>
<%Order order = (Order)request.getAttribute("order");%>

    <div class="container">
        <div class="iphone">
            <div class="flex">
                <div class="flex_left">
                    <div class="flexHeader">
                        <div class="order-summary">
                        <%if(!order.isCancelOrder()){ %>
                            <div class="order-status">Arriving date</div>
                            <div id="orderDate">
                                On the Way
                            </div>
                            <%}else{ %>
                            <div class="order-status">Your Order</div>
                            <div id="orderDate" Style="color:red">
                                Canceled
                            </div>
                            <%} %>
                            <!-- <div id="orderDay">
                                Friday
                            </div> -->
                        </div>
                        <!-- <div class="action-btn">
                        <div class="back-btn"><i class="far fa-long-arrow-left"></i></div>
                    </div> -->
                    </div>
                    <div class="hero-img-container">
                        <div class="triangle1"></div>
                        <div class="arc"></div>
                        <div class="pattern"></div>
                        <img id="productImage" src="<%=product.getImage() %>" class="hero-img">
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
                                        <img id="reference_image" src ="<%=product.getImage()%>" class="img-photo">
                                    </div>
                                    <div class="product-desc">
                                        <span class="orderText" id="lastchild" ><%=product.getName()%>
                                        </span>
                                         
							
                           <div class="shipping-address">
                           <p class="shipping-desc">Delivery Address</p>
                                <p id="buyer_name"><%=user.getName()%></p>
                                <p id="buyer_address"><%=user.getAddress()%></p>
                                <p id="buyer_town"><%=user.getVillage()%>,<%=user.getPincode()%></p>
                                <p id="buyer_mobile"><%=user.getMobileNumber() %></p>
                                <p id="buyer_city"><%=user.getDistrict()%></p>
                            </div>
                                    </div>
                                 
                                </div>

                            </div>
                            <hr>

                            <div class="shipping-desc">Order Summary</div>
                            <div class="order-desc">
                                <div>
                                  
                                        
                                   <p class="price" id="firstchild2">Item:<%=order.getBuyQuantity()%></p>
                                    <p class="price">Total Price :  Rs:<%=order.getPrice()*order.getBuyQuantity()%></p>
                  
                                </div>
                                <div>
                                    <p id="total_price" class="price"></p>
                                </div>
                             <!--    <button class="review_button" id="myButton"></button>  --> 
                            </div>
                        </div>
<!--                         <div id="myPopup" class="popup">
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
                                            <button id="closePopup">
                                                Cancel
                                            </button>
                                        </form>
                                    </div>
                                </div>


                            </div>
                        </div> -->
                       <!--  <button class="review_button" id="myButton">Review The Product</button> -->
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
    
</body>

</html>