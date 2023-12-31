<!DOCTYPE html>
<%@page import="in.fssa.kaithari.model.Product"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seller product</title>

        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/seller products.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Kumbh+Sans:wght@100;200;300;400;500;600;700;800;900&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Nerko+One&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
            rel="stylesheet">

    </head>

    <body>
    <% Product product=(Product) request.getAttribute("productDetails"); %>
        <header>
            <div class="logo">
                <a href="<%=request.getContextPath()%>/index.jsp">
                    <img src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png" alt="logo" width="100px"
                        height="80px"></a>
            </div>

           <%--  <div class="back">
                <a href="<%=request.getContextPath()%>/seller products/seller product list.jsp">
                    <button>Back</button>
                </a>
            </div> --%>

            <h6 class="but">MY PRODUCTS</h6>

            <div class="navigations">
                <div class="search">
                    <input type="hidden" placeholder="search">
                </div>

                <%-- <div class="new">
                    <a href="<%=request.getContextPath()%>/seller products/seller create product.jsp">
                        <button>Creat New</button>
                    </a>
                </div> --%>

                <div class="accound">
                    <a href="<%=request.getContextPath()%>/seller/profile">
                        <i class="fa fa-user-circle-o"
                            style="font-size:24px;color: black;"></i></a>
                </div>
            </div>
        </header>

        <section class="box">

            <div class="section">
             <div class="meenu">
                <div class="product">
                <img id="product_image" src="<%=product.getImage() %>" alt="product-1" width="450px" height="450px" />
                </div>

                </div>

                <div class="sneaker">
                <h4>KAITHTHARI</h4>

                <h2 id="name_of_product"></h2>
                <div class="rupeeees">

                <div class="akka">
                <p>Special Price</p>
                <b id="offered_price"><%="Rs : " + (product.getPrice()-((product.getPrice()/100)*product.getOffers())) %></b>
                <span id="offer_discount">
                <%=product.getOffers()+"%" %>
                </span>
                </div>
                </div>

                <div class="ic">
                <s id="normal_price"><%="Rs : " +product.getPrice() %></s>
                </div>

                <!-- <div class="review">
                REVIEW :
                <i class="fa fa-star" style="font-size:24px; color:orange;"></i>
                <i class="fa fa-star" style="font-size:24px; color:orange;"></i>
                <i class="fa fa-star" style="font-size:24px; color:orange;"></i>
                <i class="fa fa-star-o" style="font-size:24px; color:orange;"></i>
                <i class="fa fa-star-o" style="font-size:24px; color:orange;"></i>
                </div> -->

                

                <div>
                    <p id="quan">Ouantity : <%=product.getQuantity() %> </p>
                </div>
                <div>
                    <p id="length">Product-length :<%=product.getLength()==5?"5.5":"8.2" %> </p>
                </div>

                <div class="content-details">
                    <h3>Design-Type :</h3>
                    <p id="Design"><%=product.getDesignName() %> </p>
                </div>
                <div class="content-details">
                    <h3>Jarigai : </h3>
                    <p id="Jarigai"><%=product.getJarigai() %></p>
                </div>

                <div class="content-details">
                <h3>Product Details</h3>
                <p id="product_detail_para"><%=product.getDescription() %></p>
                </div>


                <div class="what">
                <a href="/kaithariweb/product/edit?id=<%=product.getId() %>"><button class="the">
                    <strong>EDIT</strong>
                </button></a>
                
                <div class="what">
                <a href="delete?id=<%=product.getId() %>"><button class="the">
                    <strong>DELETE</strong>
                </button></a>
                

                </div>

                </div> 

            </div>

        </section>
        <script>
// const product_details = {
//   image: {
//     source: "../../assets/img/10.jpeg",
//     alt: "product",
//   },
//   heading: "Kanchipuram Saree",
//   price: {
//     actual: {
//         type: "₹",
//         value: 7500,
//     },

//     discount: {
//         type: "% off",
//         value: 25,
//     },
//     current: {
//         type: "₹",
//         value: 5200,
//     },
//   },
//   product_description: "Available Price",
//   description: [
//     {
//               text: "Special PriceGet extra 5% off (price inclusive of cashback/coupon)T&C.",
//     },
//     {
//         text: "Bank Offer10% instant discount on SBI Credit Card, up to ₹750 on orders of ₹2,500 and aboveT&C.",
//     },
//     {
//       text: "Bank OfferFlat ₹100 Instant Cashback on Paytm Wallet. Min Order Value ₹1000. Valid once per Paytm accountT&C.",
//     },
//     {
//               text: "Bank Offer10% instant discount on IDFC FIRST Credit Card EMI Trxns, up to ₹3000 on orders of ₹5,000 and aboveT&C.",
//     },
//   ],
//   // link: "../seller products/seller product edit.html",
//   // link_1: "../seller products/seller home.html"
// };

// let product_upload = JSON.parse(localStorage.getItem("product_crud"));
// console.log(product_upload)

const url_upload = JSON.parse(localStorage.getItem("product_crud"));

const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const product_id = urlParams.get("product");

const unique_id = url_upload.find((e) => e.product_uuid === product_id);
console.log(product_id);
console.log(url_upload);

document.getElementById("product_image").src=unique_id.uppic;
document.getElementById("name_of_product").innerText=unique_id.productname;
document.getElementById("offered_price").innerText="Rs:"+unique_id.discountprice;
document.getElementById("offer_discount").innerText=unique_id.productoffer+"% off";
document.getElementById("normal_price").innerText="₹"+unique_id.productprice;
document.getElementById("product_detail_para").innerText=unique_id.descrip;
document.getElementById("Jarigai").innerText=unique_id.Jarigai;
document.getElementById("Design").innerText=unique_id.Design_Name;
document.getElementById("quan").innerText="Quandity : "+unique_id.Quantity;
document.getElementById("length").innerText="Length : "+unique_id.selectedValue;

// {
//   "uppic": "https://iili.io/HNw8ESp.jpg",
//   "productname": "Kanji saree",
//   "productprice": "9000",
//   "discountprice": 8100,
 
//   "descrip": "mnbvzasdfghjkloiuytrewqasdfghjkl,mnbvcxzaqw",
//   "productoffer": "10",
  
 
//   "Quantity": "13",
//   "jarigai": "qwertyhnm ",
//   "Design_Name": "hvtsvbtafaasdfghj 65788",
//   "selectedValue": "5.5 Meter",
//   "Jargai": "qwertyhnm "
// }
// div_meenu

// const div_section = document.createElement("div");
// div_section.setAttribute("class", "section");
// console.log(div_section);

// const div_meenu = document.createElement("div");
// div_meenu.setAttribute("class", "meenu");
// div_section.append(div_meenu);

// // // div_product

// const div_product = document.createElement("div");
// div_product.setAttribute("class", " product");
// div_meenu.append(div_product);

// // <img> </img>

// const img = document.createElement("img");
// img.setAttribute("src", unique_id.uppic);
// img.setAttribute("alt", "product-1");
// img.setAttribute("height", "450px");
// img.setAttribute("width", "450px");
// div_product.append(img);

// // div_product_1

// const div_product_1 = document.createElement("div");
// div_product_1.setAttribute("class", "product-1");
// div_product.append(div_product_1);

// // div_sneaker

// const div_sneaker = document.createElement("div");
// div_sneaker.setAttribute("class", "sneaker");
// div_section.append(div_sneaker);

// // h4
// const h4 = document.createElement("h4");
// h4.innerText = "KAITHTHARI";
// div_sneaker.append(h4);

// // h2
// const h2 = document.createElement("h2");
// h2.innerText = unique_id.productname;
// div_sneaker.append(h2);

// // div_rupeeees

// const div_rupeeees = document.createElement("div");
// div_rupeeees.setAttribute("class", "rupeeees");
// div_sneaker.append(div_rupeeees);

// // div_akka

// const div_akka = document.createElement("div");
// div_akka.setAttribute("class", "akka");
// div_rupeeees.append(div_akka);

// // <p></p>

// const p = document.createElement("p");
// p.innerText = "Special Price";
// div_akka.append(p);

// // <b></b>

// const b = document.createElement("b");
// b.innerText = `₹${unique_id.discountprice}`;
// div_akka.append(b);

// //  <span></span>

// const span = document.createElement("span");
// span.innerText = `${unique_id.productoffer}% off`;
// div_akka.append(span);

// //  div_ic
// const div_ic = document.createElement("div");
// div_ic.setAttribute("class", "ic");
// div_sneaker.append(div_ic);

// // <s></s>

// const s = document.createElement("s");
// s.innerText = `₹${unique_id.productprice}`;
// div_ic.append(s);

// //   div_review

// const div_review = document.createElement("div");
// div_review.setAttribute("class", "review");
// div_review.innerText = "REVIEW :";
// div_sneaker.append(div_review);

// // <i class=fa fa-star> </i>
// for (let j = 0; j < 5; j++) {
//   const i_fa = document.createElement("i");
//   i_fa.setAttribute("class", "fa fa-star");
//   i_fa.setAttribute("style", "font-size:24px");
//   i_fa.setAttribute("style", "color:orange");
//   div_review.append(i_fa);
// }

// // <div_content-details>

// const div_content_details = document.createElement("div");
// div_content_details.setAttribute("class", "content-details");
// div_sneaker.append(div_content_details);

// // <h3></h3>

// const h3 = document.createElement("h3");
// h3.innerText = "Available price";
// div_content_details.append(h3);

// // const descript = product_details.description;
// // const no_of_list = descript.length;
// //<p_Special>
// // for (let j = 0; j < no_of_list; j++) {
// const p_spcial = document.createElement("P");
// p_spcial.innerText = unique_id.descrip;
// div_content_details.append(p_spcial);

// // div_what

// const div_what = document.createElement("div");
// div_what.setAttribute("class", "what");
// div_sneaker.append(div_what);
// console.log(div_what);

// // button_the

// const button_the = document.createElement("button");
// button_the.setAttribute("class", "the");
// button_the.setAttribute("style", "color:black");
// button_the.setAttribute("data-id", unique_id.product_uuid);
// button_the.innerText = "EDIT";
// div_what.append(button_the);

// // a_href
// a_href = document.createElement("a");
// a_href.setAttribute("href", product_details["link"]);
// button_the.append(a_href);

// // <strong>
// strong_2 = document.createElement("strong");
// strong_2.innerText = "EDIT ";
// strong_2.setAttribute("data-id", product_upload[0]["product_uuid"]);
// a_href.append(strong_2);

//  button_that
// button_that = document.createElement("button");
// button_that.setAttribute("class", "that");
// button_that.innerText = "DELETE";
// div_what.append(button_that);

// a_href
// a_href = document.createElement("a");
// a_href.setAttribute("href", product_details["link_1"]);
// button_that.append(a_href);

// // <strong>
// strong_3 = document.createElement("strong");
// strong_3.innerText = "DELETE";
// a_href.append(strong_3);

// document.querySelector("div.section").append(div_meenu);
// document.querySelector("div.section").append(div_sneaker);
// document.querySelector("div.sneaker").append(div_what);
// document.querySelector("section.box").append(div_section);

const edit = document.querySelectorAll("button.the");
edit.forEach((findId) => {
  findId.addEventListener("click", function on() {
    const { id } = this.dataset;
    // localStorage.setItem("product_uuid", JSON.stringify(id));
    window.location.href = `../seller products/seller product edit.jsp?product=${product_id}`;
  });
});
// let del_product = document.querySelector("button.that");
//     del_product.addEventListener("click", delData);

//     function delData() {
//         if (confirm("Are you sure?")) {
//             let unique_id = product_id;
//             let product = JSON.parse(localStorage.getItem("product_crud"));
//             function find_data(e) {
//                 return e.product_uuid == unique_id;
//             }
//             product_data = product.find(find_data);
//             const indexOfUser = product.indexOf(product_data);

//             product.splice(indexOfUser, 1);
//             localStorage.setItem('product_crud', JSON.stringify(product));
//             location.reload();
//         };
//     };
  </script>

    </body>

</html>