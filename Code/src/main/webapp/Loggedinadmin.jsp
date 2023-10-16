<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Bean.*" %>
   <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
    <meta charset="UTF-8">
    <title>ABC SHOP HOME PAGE</title>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <script>
    $(document).ready(function () {
        $('#nav li').hover(
        function () {
            //show submenu
            $('ul', this).show();
        }, function () {
            //hide submenu
            $('ul', this).hide();
        });
    });
</script>
<style>
* {
	margin: 0;
	padding: 0;
}
    
  #nav {
  list-style: none inside;
  margin: 0;
  padding: 0;
  text-align: center;
}

#nav li {
  display: block;
  position: relative;
  float: left;
/*  background: #24af15;*/
  /* menu background color */
}

#nav li a {
  display: block;
  padding: 0;
  text-decoration: none;
  width: 200px;
  /* this is the width of the menu items */
  line-height: 35px;
  /* this is the hieght of the menu items */
  
  /* list item font color */
}

/*
#nav li li a {
  font-size: 80%;
}
*/


/* smaller font size for sub menu items */




/* highlights current hovered list item and the parent list items when hovering over sub menues */

#nav ul {
  position: absolute;
  padding: 0;
  left: 0;
  display: none;
  /* hides sublists */
}

#nav li:hover ul ul {
  display: none;
}


/* hides sub-sublists */

#nav li:hover ul {
  display: block;
}
  
body {
	font-family: 'Ubuntu', sans-serif;
}
.banner-text {
	width: 100%;
	position: absolute;
	z-index: 1;
}
.banner-text ul {
	height: 50px;
	display: flex;
	justify-content: center;
}
    .banner-text ul li{
	display: inline-block;
	padding: 40px 15px;
}
.banner-text ul li li{
	display: inline-block;
	padding: 0px 15px;
}
/*
.banner-text ul li {
	display: inline-block;
	padding: 40px 15px;
}
*/
.banner-text ul li a {
	text-decoration: none;
	color: #fff;
	text-transform: uppercase;
	font-size: 20px;
	padding: 5px 10px;
}
.banner-text ul li a:hover {
	background: #fff;
	color: #000;
}
.banner-text h2 {
	text-align: center;
	color: #fff;
	font-size: 50px;
	margin-top: 15%;
	margin-bottom: 15px;
}
.banner-text p {
	text-align: center;
	font-size: 18px;
	width: 35%;
	margin: auto;
	color: #ddd;
	line-height: 1.7;
}
.animation-area {
	background: linear-gradient(to left, #8942a8, #ba382f);
	width: 100%;
	height: 100vh;
}
.box-area {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}
.box-area li {
	position: absolute;
	display: block;
	list-style: none;
	width: 25px;
	height: 25px;
	background: rgba(255, 255, 255, 0.2);
	animation: animate 20s linear infinite;
	bottom: -150px;
}
.box-area li:nth-child(1) {
	left: 86%;
	width: 80px;
	height: 80px;
	animation-delay: 0s;
}
.box-area li:nth-child(2) {
	left: 12%;
	width: 30px;
	height: 30px;
	animation-delay: 1.5s;
	animation-duration: 10s;
}
.box-area li:nth-child(3) {
	left: 70%;
	width: 100px;
	height: 100px;
	animation-delay: 5.5s;
}
.box-area li:nth-child(4) {
	left: 42%;
	width: 150px;
	height: 150px;
	animation-delay: 0s;
	animation-duration: 15s;
}
.box-area li:nth-child(5) {
	left: 65%;
	width: 40px;
	height: 40px;
	animation-delay: 0s;
}
.box-area li:nth-child(6) {
	left: 15%;
	width: 110px;
	height: 110px;
	animation-delay: 3.5s;
}
@keyframes animate {
	0% {
		transform: translateY(0) rotate(0deg);
		opacity: 1;
	}
	100% {
		transform: translateY(-800px) rotate(360deg);
		opacity: 0;
	}
}
    
    </style>
    
</head>
<body>
<form action="Controller" Method="post">
    <div class="banner-text">
        <ul id="nav" class="ul1">
    <li><a href="Home.jsp">Home</a></li>                        
	<li><a href="#">Cashier</a>
    	<div class="li1">
        <ul> 
      		<li><a href="Register.jsp">Register Cashier</a></li>
      		<li><a href="ViewCashier.jsp">View Cashier</a></li>
    	</ul>
    </div>
    </li>
	<li><a href="#">Product</a>
    	<ul> 
      		<li><a href="ProductCreate.jsp">Register Products</a></li>
      		<li><a href="ViewAllProduct.jsp">View Products</a></li>
      
    	</ul>
    </li>
<!--            <li><a href="#">About</a></li>-->
            <li><a href="Login.jsp">LOG OUT</a></li>
        </ul>
        </form>
        
        <%ArrayList<Register>ulist=(ArrayList<Register>)session.getAttribute("vcashier1");
for(Register robj:ulist)
{
%>   
        <h2>Welcome <%=robj.getName() %></h2>
        <p>PROFILE DETAILS</p>
        <p>Email = <%=robj.getEmail() %></p>
        <p>Date of Birth = <%=robj.getDOB() %></p>
		<p>Address = <%=robj.getAddress() %></p>
    </div>
    
    <div class="animation-area">
        
    </div>
    
    <%
    break;
    } 
    %>
</body>
</html>