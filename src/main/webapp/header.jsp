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

	<%
	User user = null;

	if (request.getSession().getAttribute("userId") != null) {

		int userId = (Integer) request.getSession().getAttribute("userId");
		user = new UserService().findById(userId);

	} else {
		user = null;
	}
	%>

	<%
	if (user == null) {
	%>

	<div class="logo">
		<a href="<%=request.getContextPath()%>/index.jsp"><img
			src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png"
			alt="logo" width="100px" height="80px"></a>
	</div>

	<div class="nav">
		<ul>
			<li><a href="<%=request.getContextPath()%>/products/saree">Sarees</a></li>
			<li><a href="<%=request.getContextPath()%>/products/dhoti">Dhotis</a></li>
			<li><a
				href="<%=request.getContextPath()%>/pages/about us/about us.jsp">About
					us</a></li>
			<li><a href="#footer">Contact</a></li>
			<li><a
				href="<%=request.getContextPath()%>/pages/seller products/seller home.jsp">Seller</a></li>

		</ul>
	</div>
	<div class="navigations">
		<div class="search">
			<input type="hidden" placeholder="search">
		</div>
		<a href="<%=request.getContextPath()%>/user/login"><button class="log">Log
				in</button></a> 
				<a href="<%=request.getContextPath()%>/user/new"><button class="log">Sign Up</button></a>

		<%
		} else {
		%>

		<div class="logo">
			<a href="<%=request.getContextPath()%>/index.jsp"><img
				src="<%=request.getContextPath()%>/assets/img/image-removebg-preview.png"
				alt="logo" width="100px" height="80px"></a>
		</div>

		<div class="nav">
			<ul>
				<li><a href="<%=request.getContextPath()%>/products/saree">Sarees</a></li>
				<li><a href="<%=request.getContextPath()%>/products/dhoti">Dhotis</a></li>
				<li><a
					href="<%=request.getContextPath()%>/pages/about us/about us.jsp">About
						us</a></li>
				<li><a href="#footer">Contact</a></li>
				<li><a
					href="<%=request.getContextPath()%>/pages/seller products/seller home.jsp">Seller</a></li>
			</ul>
		</div>
		<div class="navigations">
			<div class="search">
				<input type="hidden" placeholder="search">
			</div> 
			
			<div class="cart">
				<a
					href="<%=request.getContextPath()%>/pages/buy now page/add to cart.jsp"><i
					class="fa fa-shopping-cart" style="font-size: 24px; color: black;"></i></a>
			</div>

			<div class="accound">
				<a href="<%=request.getContextPath()%>/user/profile"><i
					class="fa fa-user-circle-o" style="font-size: 24px; color: black;"></i>
				</a>
			</div>
			
			
			
			<div class="order">
				<a href="<%=request.getContextPath()%>/user/my_orders"><i
					class="fa fa-shopping-bag" style="font-size: 22px; color: black;"></i></a>
			</div>
			
		</div>

		<%} %>
	
</body>
</html>