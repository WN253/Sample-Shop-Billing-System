<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="Bean.*" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>HTML CSS Register Form</title>
    <script>
    function multiplyBy()
{
        num1 = document.getElementById("pqty").value;
        num2 = document.getElementById("price").value;
        document.getElementById("result").innerHTML = num1 * num2;
}

    </script>
    <style>
      
/*---------------------------------------*/
/* Font */
/*---------------------------------------*/
@import url('https://fonts.googleapis.com/css?family=Roboto');


/*---------------------------------------*/
/* Register Form */
/*---------------------------------------*/
body {
  background:linear-gradient(to right, #78a7ba 0%, #385D6C 50%, #78a7ba 99%);
}

.signup-form {
  font-family: "Roboto", sans-serif;
  width:auto;
  margin:30px auto;
  background:linear-gradient(to right, #ffffff 0%, #fafafa 50%, #ffffff 99%);
  border-radius: 10px;
}

/*---------------------------------------*/
/* Form Header */
/*---------------------------------------*/
.form-header  {
  background-color: #EFF0F1;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.form-header h1 {
  font-size: 30px;
  text-align:center;
  color:#666;
  padding:20px 0;
  border-bottom:1px solid #cccccc;
}

/*---------------------------------------*/
/* Form Body */
/*---------------------------------------*/
.form-body {
  padding:10px 40px;
  color:#666;
}

.form-group{
  margin-bottom:20px;
}

.form-body .label-title {
  color:#1BBA93;
  font-size: 17px;
  font-weight: bold;
}

.form-body .form-input {
    font-size: 17px;
    box-sizing: border-box;
    width: 100%;
    height: 34px;
    padding-left: 10px;
    padding-right: 10px;
    color: #333333;
    text-align: left;
    border: 1px solid #d6d6d6;
    border-radius: 4px;
    background: white;
    outline: none;
}



.horizontal-group .left{
  float:left;
  width:49%;
}

.horizontal-group .right{
  float:right;
  width:49%;
}

input[type="file"] {
  outline: none;
  cursor:pointer;
  font-size: 17px;
}

#range-label {
  width:15%;
  padding:5px;
  background-color: #1BBA93;
  color:white;
  border-radius: 5px;
  font-size: 17px;
  position: relative;
  top:-8px;
}


::-webkit-input-placeholder  {
  color:#d9d9d9;
}

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
.signup-form .form-footer  {
  background-color: #EFF0F1;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
  padding:10px 40px;
  text-align: right;
  border-top: 1px solid #cccccc;
  clear:both;
}

.form-footer span {
  float:left;
  margin-top: 10px;
  color:#999;  
  font-style: italic;
  font-weight: thin;
}

.btn {
   display:inline-block;
   padding:10px 20px;
   background-color: #1BBA93;
   font-size:17px;
   border:none;
   border-radius:5px;
   color:#bcf5e7;
   cursor:pointer;
}

.btn:hover {
  background-color: #169c7b;
  color:white;
}
.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
/*  height: 320px;*/
  margin: auto;
  max-width: auto;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:white;
  background:Black;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}


  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:black;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
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


      </style>
<script>
	var dt = new Date();
	document.getElementById('date-time').innerHTML=dt;
</script>
  </head>
  <body>
  

    <form class="signup-form" action="Controller" method="post">

      <!-- form header -->
      <div class="form-header">
        <h1>RECEIPT</h1>
      </div>

      <!-- form body -->
      <div class="form-body">
      <H3>ABC SHOP</H3>
      <H3>THIRUVANANTHAPURAM , KERALA</H3>
      <H3>PHNO : 0000000000</H3><br><br>
<%
ArrayList<Register>ulist1=(ArrayList<Register>)session.getAttribute("billlist1");
for(Register robj:ulist1)
{
	String custname=robj.getBcustname();
	String cashname=robj.getBcashname();
	String billno=robj.getBbillno();
	String date=robj.getBdate();
	String phno=robj.getBphno();

%>
        <!-- Firstname and Lastname -->
        <div class="horizontal-group">
          <div class="form-group left">
            <label for="firstname" class="label-title">CASHIER NAME</label>
            <input type="text" id="firstname" class="form-input" name="bcashname" value="<%=robj.getBcashname() %>" readonly>
          </div>
          <div class="form-group right">
            <label for="lastname" class="label-title">BILL NO</label>
            <input type="number" id="lastname" class="form-input" name="bbillno" value="<%=robj.getBbillno() %>" readonly>
          </div>
        </div>

        <!-- Passwrod and confirm password -->
        <div class="horizontal-group">
          <div class="form-group left">
            <label for="password" class="label-title">CUSTOMER NAME</label>
            <input type="text" id="password" class="form-input" name="bcustname" value="<%=robj.getBcustname() %>" readonly>
          </div>
          <div class="form-group right">
            <label for="confirm-password" class="label-title">DATE</label>
            <input type="date" class="form-input" id="date" name="bdate" value="<%=robj.getBdate() %>" readonly>
          </div>
        </div>
        <div class="horizontal-group">
          <div class="form-group left">
            <label for="" class="label-title">PHONE NUMBER</label>
            <input type="text" id="phno" class="form-input" name="bphno" value="<%=robj.getBphno() %>" readonly>
          </div></div>
<%
break;
}

%>
<br><br><br><br><br><br><br><br><br><br>

<table align="center" class="table-fill">

<thead>
<tr>
<th class="text-left">ITEM ID</th>
<th class="text-left">ITEM NAME</th>

    <th class="text-left">PRICE</th>
    <th class="text-left">PURCHASE QUANTITY</th>
	<th class="text-left">TOTAL PRODUCT PRICE</th>
</tr>

<%
int i=0;
ArrayList<Register>ulist2=(ArrayList<Register>)session.getAttribute("billlist1");
for(Register robj:ulist2)
{
i=i+1;

%>
</thead>
<tbody class="table-hover">
<tr>
<td class="text-left"><input type="number" id="id" name="id<%=i%>" class="form-input" value="<%=robj.getBid() %>" placeholder="p quantity" readonly></td>
<td class="text-left"><input type="text" id="itemname" name="itemname<%=i%>" class="form-input" value="<%=robj.getBitemname() %>" placeholder="p quantity" readonly></td>

<td class="text-left"><input type="text" id="price" name="price<%=i%>" class="form-input" value="<%=robj.getBprice() %>" placeholder="price" readonly></td>
<td class="text-left"><input id="pqty" type="number" name="pqty<%=i%>" class="form-input" value="<%=robj.getBpqty() %>" placeholder="p quantity" readonly></td>
<td class="text-left"><input id="total" type="number" name="tprice<%=i%>" class="form-input" value="<%=robj.getBtprice() %>" placeholder="p quantity" readonly></td>

</tr>

<%} %>
<tr>
<%
ArrayList<Register>Totalprice=(ArrayList<Register>)session.getAttribute("Totalprice1");
for(Register robj:Totalprice)
{
%>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td align="center">Total Amount = <%=robj.getBfinaltotal() %></td>

<%} %>
</tr>
</tbody>

</table>
<br>
      </div>

      <!-- form-footer -->
      <div class="form-footer">
        <span><b>THANKS FOR THE PURCHASE VISIT US AGAIN </b></span>
        
        <button type="submit" name="action" value="Createnewbill" class="btn">Create New Bill</button>
      	<button onclick="window.print();return false;" class="btn">Print</button>
      	<button type="submit" name="action" value="logout" class="btn">Log Out</button>
      </div>
	
       
    </form>

    <!-- Script for range input label -->
  </body>
</html>
