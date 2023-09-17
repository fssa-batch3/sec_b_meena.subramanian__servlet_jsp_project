<%@page import="in.fssa.kaithari.service.UserService"%>
<%@page import="in.fssa.kaithari.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>

<% User user=null;

if(request.getSession().getAttribute("userId") != null){

int userId= (Integer) request.getSession().getAttribute("userId");
user= new UserService().findById(userId);

}else{
	user=null;
}


%>

	 <%if(user==null){ %>

		<div class="logo">
			<a href="index.jsp"><img src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png" alt="logo" width="100px"
				height="80px"></a>
		</div>

		<div class="nav">
			<ul>
				<li><a href="<%=request.getContextPath() %>/pages/products/product_list saree.jsp">Sarees</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/products/product_list dothi.jsp">Dhotis</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/about us/about us.jsp">About us</a></li>
				<li><a href="#footer">Contact</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/seller products/seller home.jsp">Seller</a></li>

			</ul>
		</div>
		<div class="navigations">
			<div class="search">
				<input type="search" placeholder="search">
			</div>
			<a href="<%=request.getContextPath() %>/logion page.jsp"><button>Log in</button></a> <a href="<%=request.getContextPath() %>/register page.jsp"><button>Sign
					Up</button></a>
					
				<%}else{ %>	

		<div class="logo">
			<a href="index.jsp"><img src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png" alt="logo" width="100px"
				height="80px"></a>
		</div>

		<div class="nav">
			<ul>
				<li><a href="<%=request.getContextPath() %>/pages/products/product_list saree.jsp">Sarees</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/products/product_list dothi.jsp">Dhotis</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/about us/about us.jsp">About us</a></li>
				<li><a href="#footer">Contact</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/seller products/seller home.jsp">Seller</a></li>
			</ul>
		</div>
		<div class="navigations">
			<div class="search">
				<input type="search" placeholder="search">
			</div>


			<div class="cart">
				<a href="<%=request.getContextPath()%>/pages/buy now page/add to cart.jsp"><i class="fa fa-shopping-cart"
					style="font-size: 24px; color: black;"></i></a>
			</div>
			<div class="accound">
				<a href="<%=request.getContextPath()%>/pages/profile page/profile page.jsp"><i class="fa fa-user-circle-o"
					style="font-size: 24px; color: black;"></i> </a>
			</div>
			<div class="order">
				<a href="<%=request.getContextPath()%>/pages/orders/my orders.jsp"><i class="fa fa-shopping-bag"
					style="font-size: 22px; color: black;"></i></a>
			</div>
			<div class="favorite">
				<a href="<%=request.getContextPath()%>/pages/whislist/wishlist.jsp"><i class="fa fa-heart"
					style="font-size: 22px; color: black;"></i></a>
			</div>
		</div>
		
		<%} %>

</body>
</html>