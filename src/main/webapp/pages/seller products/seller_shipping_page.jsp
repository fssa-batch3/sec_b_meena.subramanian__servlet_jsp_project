<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="in.fssa.kaithari.service.ProductService"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.kaithari.model.Order"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.model.User"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sarees</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/seller_shipping_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

</head>

<body>
	<%
	List<Order> order = (List<Order>) request.getAttribute("orderList");
	List<Product> product = (List<Product>)request.getAttribute("productDeatils");
	%>

    <header>
        <div class="logo">
            <a href="<%=request.getContextPath() %>/index.jsp">
                <img src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png" alt="logo" width="100px" height="80px">
            </a>
        </div>

        <h2>Your Orders</h2>

        <div class="navigations">

            <div class="search">
                <input type="hidden" placeholder="search">
            </div>

            <div class="accound">
                <a href="<%=request.getContextPath()%>/seller/profile">
                    <i class="fa fa-user-circle-o" style="font-size:24px;color: black;"></i>
                </a>
            </div>

           <%--  <div class="order">
                <a href="#">
                    <img class="order_img" src="<%=request.getContextPath()%>/assets/img/Seller order bag.png">
                </a>
            </div> --%>

        </div>
    </header>
    <% if(order.isEmpty()){ %>
	
	<p style="margin: 243px; font-size: -webkit-xxx-large;  font-weight: bold; margin-left: 23rem;"> You don't have any orders! </p>


<% } else { %>
    <section class="order_card">
 <% for (int i=0; i<product.size(); i++) { %>
        <div class="wat"> 
         <img  alt="photo" src="<%=product.get(i).getImage()%>" width="150" height="150" />
            <div class="product-content">
                <h3 class="product-name"><%=product.get(i).getName() %></h3>
                <p class="s1">Qty: <%=order.get(i).getBuyQuantity() %></p>
                <p class="s1"><%=order.get(i).getName() %></p>
                <p class="s1"><%=order.get(i).getAddress() %></p>
                <p class="s1"><%=order.get(i).getVillage() %></p>
                <p class = "s1"><%=order.get(i).getPincode() %></p>
                
                <%if(order.get(i).isCancelOrder()){ %>
                <p Style="color:red; margin-top: 37px;">order cancelled by customer</p>
                <%}else{ %>
                 <button class="buy">
                    <strong>Shipped</strong>
                </button> 
                <%} %>
                
            </div> 
            </div>
    <% } %>
     <% } %>
      

        <!-- <div class="wat">
            <img src="../../assets/img/10.jpeg" alt="photo" width="150" height="150" />
            <div class="product-content">
                <h3 class="product-name">Kanchi Pattu</h3>
                <p class="s1">Qty: 2</p>
                <p class="s1">Meenu</p>
                <p class="s1">32/27,Bajanai Madam Sannathi Street</p>
                <p class="s1">Veeravanalllur</p>
                <button class="buy">
                    <strong>Shipped</strong>
                </button>
            </div>
        </div> -->


        <!-- <div class="wat">
            <img src="../../assets/img/10.jpeg" alt="photo" width="150" height="150" />
            <div class="product-content">
                <h3 class="product-name">Kanchi Pattu</h3>
                <p class="s1">Qty: 2</p>
                <p class="s1">Meenu</p>
                <p class="s1">32/27,Bajanai Madam Sannathi Street</p>
                <p class="s1">Veeravanalllur</p>
                <button class="buy">
                    <strong>Shipped</strong>
                </button>
            </div>
        </div>  -->

    </section>




    <section id="footer">
        <section class="footer-container">
            <div class="menu">
                <h3>contact us:</h3>
                <span class="number">+917209587436</span>
            </div>
            <div class="about">
                <h3>Menu</h3>
                <h6>
                    <a href="<%=request.getContextPath() %>/index.jsp">Home</a>
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
                            style="margin-bottom: 40px; margin-left: 3px;">
                    </a>

                </div>
            </div>
        </section>
    </section>

<!-- 
    <script>
    
    
        const seller_id = JSON.parse(localStorage.getItem("uniqueID_seller"));
        const order_list = JSON.parse(localStorage.getItem("order_list"));
        const add_address = JSON.parse(localStorage.getItem("add_address"));
        const product_crud = JSON.parse(localStorage.getItem("product_crud"));
        const user_cred = JSON.parse(localStorage.getItem("user_cred"));

        const seller_orders = order_list.filter((e) => e.seller_id === seller_id);
        console.log(seller_orders);
        for (let i = 0; i < seller_orders.length; i++) {
            const find_user = user_cred.find((e) => e.email === seller_orders[i].uniqueID_user);
           
            const find_address = add_address.find((e) => e.address_uuid === seller_orders[i].user_adress);
         
            const find_product = product_crud.find((e) => e.product_uuid === seller_orders[i].product_id);
            console.log(find_product);
           
            // Create the main container div
            const containerDiv = document.createElement('div');
            containerDiv.classList.add('wat');

            // Create the image element
            const imageElement = document.createElement('img');
            imageElement.src = find_product.uppic;
            imageElement.alt = 'photo';
            imageElement.width = '150';
            imageElement.height = '150';

            // Create the product content div
            const productContentDiv = document.createElement('div');
            productContentDiv.classList.add('product-content');

            // Create the product name heading
            const productNameHeading = document.createElement('h3');
            productNameHeading.classList.add('product-name');
            productNameHeading.textContent = find_product.productname;

            // Create the quantity paragraph
            const quantityParagraph = document.createElement('p');
            quantityParagraph.classList.add('s1');
            quantityParagraph.textContent = "Qty : " + seller_orders[i].quantity;

            // Create the name paragraph
            const nameParagraph = document.createElement('p');
            nameParagraph.classList.add('s1');
            nameParagraph.textContent = find_user.name;

            // Create the address paragraphs
            const addressParagraph1 = document.createElement('p');
            addressParagraph1.classList.add('s1');
            addressParagraph1.textContent = find_address.street;

            const addressParagraph2 = document.createElement('p');
            addressParagraph2.classList.add('s1');
            addressParagraph2.textContent = find_address.town;

            // Create the "Shipped" button
            const shippedButton = document.createElement('button');
            shippedButton.setAttribute("id", seller_orders[i].order_uuid);
            shippedButton.classList.add('buy');
            shippedButton.style.cursor = "pointer";
            if (seller_orders[i].shipped == false) {
                shippedButton.innerHTML = '<strong>Shipped</strong>';
            }
            else {
                shippedButton.innerHTML = '<strong>dispached</strong>';
                shippedButton.style.opacity = "0.3";
                shippedButton.style.pointerEvents = "none";

            }

            shippedButton.addEventListener("click", function () {
                const unic_id = this.id;
                const order_list = JSON.parse(localStorage.getItem("order_list"));
                const find_order = order_list.find((e) => e.order_uuid === unic_id);
                find_order.shipped = true;
                localStorage.setItem(("order_list"), JSON.stringify(order_list));
                shippedButton.innerHTML = '<strong>dispached</strong>';
                shippedButton.style.opacity = "0.3";
                shippedButton.style.pointerEvents = "none";
            })


            // Append all the elements together
            productContentDiv.appendChild(productNameHeading);
            productContentDiv.appendChild(quantityParagraph);
            productContentDiv.appendChild(nameParagraph);
            productContentDiv.appendChild(addressParagraph1);
            productContentDiv.appendChild(addressParagraph2);
            productContentDiv.appendChild(shippedButton);

            containerDiv.appendChild(imageElement);
            containerDiv.appendChild(productContentDiv);

            // Append the main container div to the document body or another parent element
            document.querySelector(".order_card").prepend(containerDiv);
        }
    </script> -->
</body>

</html>