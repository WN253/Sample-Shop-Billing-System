<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="Bean.*" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Cashier Update Page</title>
	<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

/*
body {
  background: linear-gradient(to right, #fdbb2d, #b21f1f, #1a2a6c); 
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}
*/
    body{
        background: linear-gradient(to right, #fdbb2d, #b21f1f, #1a2a6c); 
    -webkit-background-size: 100% 100%;
    -moz-background-size: 100% 100%;
    -o-background-size:  100% 100%;
    background-size:  100% 100%;
        font-size: 16px;
  font-weight: 400;
    color: white !important;
        text-rendering: optimizeLegibility;
    
  background-size: cover;
  background-attachment: fixed;
  font-family: 'Roboto', sans-serif;
    }
div.table-title { 
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/
form {
    display: block;
    margin-top: 0em;
    margin-block-end: 0em;
}
.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
/*  height: 320px;*/
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}
input[type="submit"] {
  font-size: .9em;
  color: #fff;
  background: #76b852;
  outline: none;
  border: 1px solid #76b852;
  cursor: pointer;
  padding: 0.9em;
  -webkit-appearance: none;
width: 100%;
  margin: 2em 0;
  letter-spacing: 4px;
}

input[type="submit"]:hover {
  -webkit-transition: .5s all;
  -moz-transition: .5s all;
  -o-transition: .5s all;
  -ms-transition: .5s all;
  transition: .5s all;
  background: #8DC26F;
}
.main-agileinfo {
  width: 35%;
  margin: 0em auto;
  background: none;
  background-size: cover;
}
.bn54 {
  position: relative;
  outline: none;
  text-decoration: none;
  border-radius: 50px;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
  text-transform: uppercase;
  height: 45px;
  width: 130px;
  opacity: 1;
  background-color: #ffffff;
  border: 1px solid rgba(0, 0, 0, 0.6);
}

.bn54 .bn54span {
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  color: #000000;
  font-size: 12px;
  font-weight: 500;
  letter-spacing: 0.7px;
}

.bn54:hover {
  animation: bn54rotate 0.7s ease-in-out both;
}

.bn54:hover .bn54span {
  animation: bn54storm 0.7s ease-in-out both;
  animation-delay: 0.06s;
}

@keyframes bn54rotate {
  0% {
    transform: rotate(0deg) translate3d(0, 0, 0);
  }
  25% {
    transform: rotate(3deg) translate3d(0, 0, 0);
  }
  50% {
    transform: rotate(-3deg) translate3d(0, 0, 0);
  }
  75% {
    transform: rotate(1deg) translate3d(0, 0, 0);
  }
  100% {
    transform: rotate(0deg) translate3d(0, 0, 0);
  }
}

@keyframes bn54storm {
  0% {
    transform: translate3d(0, 0, 0) translateZ(0);
  }
  25% {
    transform: translate3d(4px, 0, 0) translateZ(0);
  }
  50% {
    transform: translate3d(-3px, 0, 0) translateZ(0);
  }
  75% {
    transform: translate3d(2px, 0, 0) translateZ(0);
  }
  100% {
    transform: translate3d(0, 0, 0) translateZ(0);
  }
}  
.animation-area {
	
	width: 100%;
	height: 100vh;
}
.box-area {
	position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}
.box-area li {
	position: absolute;
	display: block;
	list-style: none;
	width: 0;
	height: 0;
	border-bottom: 160px solid rgba(255, 255, 255, 0.2);
	border-left: 20px solid transparent;
	border-right: 20px solid transparent;
	animation: animate 20s linear infinite;
	bottom: -50px;
}
.box-area li:nth-child(1) {
	left: 86%;
	animation-delay: 0s;
}
.box-area li:nth-child(2) {
	left: 12%;
	animation-delay: 1.5s;
	animation-duration: 10s;
}
.box-area li:nth-child(3) {
	left: 70%;
	animation-delay: 5.5s;
}
.box-area li:nth-child(4) {
	left: 42%;
	animation-delay: 0s;
	animation-duration: 15s;
}
.box-area li:nth-child(5) {
	left: 65%;
	animation-delay: 0s;
}
.box-area li:nth-child(6) {
	left: 23%;
	animation-delay: 3.5s;
}
@keyframes animate {
	0% {
		transform: translateY(0) scale(0);
	}
	100% {
		transform: translateY(-800px) scale(2);
		opacity: 0;
	}
}  
    
      
    </style>
</head>

<body>
<div class="table-title">
<h1 align= "center">CASHIER UPDATE</h1>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">ID</th>
<th class="text-left">NAME</th>
    <th class="text-left">EMAIL</th>
<th class="text-left">USERNAME</th>
    <th class="text-left">DOB</th>
<th class="text-left">ADDRESS</th>
    <th class="text-left">UPDATE</th>
<th class="text-left">DELETE</th>
</tr>
    <%ArrayList<Register>ulist=(ArrayList<Register>)session.getAttribute("vcashier1");
for(Register robj:ulist)
{
%>
</thead>
<tbody class="table-hover">
<tr>
<td class="text-left"><%=robj.getId() %></td>
<td class="text-left"><%=robj.getName() %></td>
    <td class="text-left"><%=robj.getUsername() %></td>
<td class="text-left"><%=robj.getEmail() %></td>
    <td class="text-left"><%=robj.getDOB() %></td>
<td class="text-left"><%=robj.getAddress() %></td>
    <td class="text-left">
<form action="Controller" method="post">
<input type="hidden" name="id" value="<%=robj.getId() %>">
<input type="hidden" name="action" value="update">
<button class="bn54" type="submit">
<span class="bn54span">Update</span>
</button>
</form>
    
    </td>
    <td class="text-left"><form action="Controller" method="post">
<input type="hidden" name="id" value="<%=robj.getId() %>">
<input type="hidden" name="action" value="del">
<button class="bn54" type="submit">
<span class="bn54span">Delete</span>
</button>
</form>
    </td>
</tr>
    <%} %>
</tbody>
</table>
    <ul class="box-area">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
  <div class="main-agileinfo">
	<%ArrayList<Register>ulist1=(ArrayList<Register>)session.getAttribute("vcashier1");
for(Register robj:ulist1)
{
%>   
	<form action="Controller" method="post">
	<input type="hidden" name="username1" value="<%=robj.getUsername() %> " formnovalidate>
	<input type="hidden" name="action" value="login2" formnovalidate>
	<p><input type="submit"  value="GO TO PROFILE PAGE" formnovalidate></p>
	
	</form>
	<%break;
	} 
	%>
	</div>

  </body>
</html>