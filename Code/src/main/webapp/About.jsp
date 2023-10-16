<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
    <meta charset="UTF-8">
    <title>ABC SHOP HOME PAGE</title>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
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
.banner-text ul li {
	display: inline-block;
	padding: 40px 15px;
}
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
	background: linear-gradient(to right, #159957, #155799);
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
    <div class="banner-text">
    
        <ul>
            <li><a href="Home.jsp">Home</a></li>                        

            <li><a href="About.jsp">About</a></li>
        </ul>
        
        <h2>ABOUT</h2>
		<p>ABC SHOP is one of the Best Shop in Thiruvananathapuram </p>
		<br><br>
		<p>We have a wide range of stationery products including planners, notebooks, notepads, sticker sheets and bookmarks which are fun, functional and beautiful all at the same time.
</p>
		
    </div>
    
    <div class="animation-area">
        <ul class="box-area">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</body>
</html>
