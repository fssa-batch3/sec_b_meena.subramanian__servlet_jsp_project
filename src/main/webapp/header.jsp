<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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

<button class="log">Log in</button>
<a href="${registerpage}"><button class="log">Sign up</button>
</div>
</body>
</html>