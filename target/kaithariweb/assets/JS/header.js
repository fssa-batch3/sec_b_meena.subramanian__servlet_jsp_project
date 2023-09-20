const myOrigin = window.location.origin + "/kaithariweb";
// console.log(myOrigin);
const logo = `/kaithariweb/index.jsp`;
const logoSrc = `../../assets/img/image-removebg-preview.png`;
const loginpage = `/kaithariweb/user/login`;
const registerpage = `/kaithariweb/user/new`;
const sareelist = `/kaithariweb/pages/products/product_list saree.jsp`;
const dothilist = `/kaithariweb/pages/products/product_list dothi.jsp`;
const aboutus = `/kaithariweb/pages/about us/about us.jsp`;
const seller = `/kaithariweb/pages/seller products/seller home.jsp`;
const profile = `/kaithariweb/pages/profile page/profile page.jsp`;
const cart = `/kaithariweb/pages/buy now page/add to cart.jsp`;
const order = `/kaithariweb/pages/orders/my orders.jsp`;
const favorite = `/kaithariweb/pages/whislist/wishlist.jsp`;

const beforeLogin = `
<div class="logo">
<a href="${logo}"><img src="${logoSrc}" alt="logo" width="100px" height="80px"></a>
</div>

<div class="nav">
<ul>
    <li><a href="${sareelist}">Sarees</a></li>
    <li><a href="${dothilist}">Dhotis</a></li>
    <li><a href="${aboutus}">About us</a></li>
    <li><a href="#footer">Contact</a></li>
    <li><a href="${seller}">Seller</a></li>
</ul>
</div>


<div class="navigations">
<div class="search">
<input type="search" placeholder="search" >
</div> 

<a  href= "${loginpage}"><button type="submit" class="log">Log in</button></a>
<a href="${registerpage}"><button class="log">Sign up</button></a>
</div>
`;

const afterLogin = 
`<div class="logo">
<a href="${logo}"><img src="${logoSrc}" alt="logo" width="100px" height="80px"></a>
</div>

<div class="nav">
<ul>
    <li><a href="${sareelist}">Sarees</a></li>
    <li><a href="${dothilist}">Dhotis</a></li>
    <li><a href="${aboutus}">About us</a></li>
    <li><a href="#footer">Contact</a></li>
    <li><a href="${seller}">Seller</a></li>
</ul>
</div>


<div class="navigations">
<div class="search">
<input type="search" placeholder="search" >
</div>
   

<div class="cart">
    <a href="${cart}"><i class="fa fa-shopping-cart" style="font-size:24px; color:black;"></i></a>
</div>
<div class="accound">
    <a href="${profile}"><i class="fa fa-user-circle-o"style="font-size:24px;color:black;"></i>
    </a>
</div>
<div class="order">
    <a href="${order}"><i class="fa fa-shopping-bag" style="font-size:22px; color:black;"></i></a>
</div>
<div class="favorite">
    <a href="${favorite}"><i class="fa fa-heart" style="font-size: 22px; color:black;"></i></a>
</div>
</div>
`;

function home() {
  const unique = JSON.parse(localStorage.getItem("uniqueID_user"));
  const head = document.getElementById("header");
  if (!unique) {
    head.innerHTML = beforeLogin;
  } else {
    head.innerHTML = afterLogin;
  }
}

home();
