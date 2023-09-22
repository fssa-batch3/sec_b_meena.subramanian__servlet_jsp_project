<!-- eslint-disable no-shadow -->
<!DOCTYPE html>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.kaithari.model.Product"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sarees</title>

        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/product list saree.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    </head>

    <body>

        
     <header>
<jsp:include page="/header.jsp" />
</header>

        <section class="sharee_section">

            <h3 class="title">silk saree</h3>
            <div id="silk_saree" class="hol">
             
            
            </div>
            <h3  class="title">cotton saree</h3>
            <div id="cotton_saree" class="hol">
                

            </div>

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
                        <a href="<%=request.getContextPath() %>/products/product_list saree.jsp">Sarees</a>
                    </h6>
                    <h6>
                        <a href="<%=request.getContextPath() %>/products/product_list dothi.jsp">Dothi</a>
                    </h6>
                    <h6>
                        <a href="<%=request.getContextPath() %>/about us/about us.jsp">About us</a>
                    </h6>

                </div>

                <div class="border-110">

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

                <div class="border-118">
                </div>

                <div class="dothi">
                    <h3>Dothi</h3>
                    <h6>
                        <a href="<%=request.getContextPath() %>/dothi/dothi product 2.jsp">othikko kattiko</a>
                    </h6>
                    <h6>
                        <a href="<%=request.getContextPath() %>/dothi/dothi product 4.jsp">Cotton dothi</a>
                    </h6>
                    <h6>
                        <a href="<%=request.getContextPath() %>/dothi/dothi product 3 .jsp">border dothi</a>
                    </h6>
                    <h6>
                        <a href="<%=request.getContextPath() %>/dothi/dothi product 6.jsp">kaavi dothi</a>
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
                            <img src="<%=request.getContextPath() %>/assets/img/linkedin-2950130-2447889.webp" alt="photo" width="50px">
                        </a>
                        <a href="https://github.com/">
                            <img src="<%=request.getContextPath() %>/assets/img/github-2950150-2447911.webp" alt="photo" width="50px">
                        </a>
                        <a href="https://www.instagram.com">
                            <img src="<%=request.getContextPath() %>/assets/img/insta.webp" alt="photo" width="50px">
                        </a>
                        <a href="https://web.telegram.org/k/">
                            <img class="tele" src="<%=request.getContextPath() %>/assets/img/tele.webp" alt="photo" width="40px" style="margin-bottom: 40px; margin-left: 3px;">
                        </a>
        
                    </div>         
                </div>
            </section>   
        </section>
        
        <%Set<Product> cotton=(Set<Product>) request.getAttribute("cottonSaree"); %>
        <%Set<Product> silk=(Set<Product>) request.getAttribute("silkSaree"); %>
        
        <script>

    // const queryString = window.location.search;
    // const urlParams = new URLSearchParams(queryString);
    // const product_id = urlParams.get("product");

    const silk_sharee=<%= new ObjectMapper().writeValueAsString(silk) %>;

    creat_card(silk_sharee);

    const cotton_sharee=<%= new ObjectMapper().writeValueAsString(cotton) %>;

    creat_card(cotton_sharee);

    function creat_card(add_products){

for (let i = 0; i < add_products.length; i++) {
//   if (add_products[i].productreview === "Saree") {
        //    <div class=wat> </div>

        const div_wat = document.createElement("div");
        div_wat.setAttribute("class", "wat");
        console.log(div_wat);

        //  <img> <img>

        const img_pic = document.createElement("img");
        img_pic.setAttribute("src", add_products[i].image);
        img_pic.setAttribute("alt", `${add_products[i].name} image`);
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
        h3_product_name.innerHTML = add_products[i].name;
        div_product_content.append(h3_product_name);

        // <p class=rate> </p>

        const p_rate = document.createElement("p");
        p_rate.setAttribute("class", "rate");
        const productObj = add_products[i];
        console.log(productObj);
        console.log(productObj.price +"-" + productObj.offers);
        p_rate.innerText = "Rs : " + (productObj.price-((productObj.price/100)*productObj.offers));
        div_product_content.append(p_rate);

        //  <s class=s1> </s>

        const s_s1 = document.createElement("s");
        s_s1.setAttribute("class", "s1");
        s_s1.innerHTML ="Rs : " + add_products[i].price;
        div_product_content.append(s_s1);

        //  <div class=star> </div>

        const div_star = document.createElement("div");
        div_star.setAttribute("class", "star");
        div_product_content.append(div_star);





        const a_but = document.createElement("a");
        a_but.setAttribute(
          "href","user_product/details?id="+add_products[i].id
        );
        div_product_content.append(a_but);


        // // <button class=buy> </buy>
        const button_buy = document.createElement("button");
        button_buy.setAttribute("class", "buy");
        button_buy.setAttribute("data-uuid", add_products[i].id);
        a_but.append(button_buy);

        // // <strong> </strong>
        const strong = document.createElement("strong");
        strong.innerHTML = "view";
        button_buy.append(strong);

        
        if(add_products[i].category_id == 7){
        	document.querySelector("div#silk_saree").appendChild(div_wat);
        	}else{
        	document.querySelector("div#cotton_saree").appendChild(div_wat);
        	}
        }

         // document.querySelector("div.hol").append(div_wat);
  
};
    

 </script>
     
    </body>
</html>
