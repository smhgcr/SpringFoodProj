
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <!-- Title-->
    <title>Food | Home</title>
    <!-- Favicon-->
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <!-- Stylesheets-->    
        <link rel="stylesheet" href='<s:url value="/resources/css/bootstrap.min.css"></s:url>'>    
    <link rel="stylesheet" href='<s:url value="/resources/css/style.css"></s:url>'>
    <link rel="stylesheet" href='<s:url value="/resources/css/icons.css"></s:url>'>
</head>
<body class="wow-animation">
  <div id="page-loader">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
    <div class="site" id="page">
    
    
        <!-- Header-->
        
        <c:import url="/header"></c:import>
        

<section class="jl-page-title" style="background-image:url(resources/img/page-bg.jpg);">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
            <h1>Single Shop Page</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li>Single Shop Page</li>
            </ul>
        </div>
        </div>
        </div>
</section>





<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
    
    <c:if test="${orderCreated }">
 		<div class="alert alert-success">
		  Order is successfully created.
		</div>
    </c:if>
      
   <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
            <th class="product-thumbnail">Image</th>
            <th class="product-name">Product</th>
            <th class="product-price text-center">Unit Price</th>
            <th class="product-price text-center">Amount</th>
            <th class="product-price text-center">Total Price</th>                        
         </tr>
      </thead>
      <tbody>

		<c:forEach items="${ basket.basketItemList }" var="item">
	       	<tr class="cart_item">
		        <td class="product-thumbnail"> <img src='<s:url value="${ item.product.pphoto }"></s:url>' width="100" alt=""></td>
		        <td class="product-name"><h5>${ item.product.ptitle }</h5></td>
		        <td class="product-price"> <span class="Price-amount">$${ item.product.pprice }</span></td>
		        <td class="product-price"> <span class="Price-amount">${ item.amount }</span></td>
		        <td class="product-price"> <span class="Price-amount">${ item.totalPrice }</span></td>		        		        
	        </tr>
		</c:forEach>
         
      </tbody>
   </table>
   
   <c:if test="${!orderCreated or (orderCreated eq null)}">
		<a class="btn margin-top-15"
			href='<s:url value="/create-order"></s:url>'>Create Order</a>
	</c:if>
      </div>
        </div>
        </div>
</section>



        <!--footer-->
        <c:import url="/footer"></c:import>
    
    
    
    </div>
    <div id="go-top"><i class="ti-angle-up"></i></div>
    <!-- Javascript-->
      <script src='<s:url value="/resources/js/scripts.js"></s:url>'></script>
    <script src='<s:url value="/resources/js/custom.js"></s:url>'></script>         
</body>
</html>