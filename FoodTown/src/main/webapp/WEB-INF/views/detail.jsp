
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

<c:import url="/css"></c:import>

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



		<section class="jl-page-title"
			style="background-image: url(resources/img/page-bg.jpg);">
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


		<section
			class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
			<div class="container">
				<div class="row product-details">
					<div class="image-column col-md-6 col-sm-12">
						<figure class="image-box">
							<img src='<s:url value="${product.pphoto }"></s:url>' alt="">
						</figure>
					</div>
					<div class="info-column col-md-6 col-sm-12">
						<div class="details-header">
						
						
							<h4>${product.ptitle }</h4>
							<div class="item-price">
								$ ${product.pprice }
							</div>
						</div>

						<div class="text">${product.pdesc }</div>
						
						<form  action='<s:url value="../basket/add-product"></s:url>'  method="POST">
							<div class="other-options clearfix">
								
								<div class="form-group stepper-type">
									<div class="stepper ">
										<input class="form-control stepper-input" type="number" name="amount" value="1" min="1" max="99"></input>
											<span class="stepper-arrow up"></span>
											<span class="stepper-arrow down"></span>
									</div>
								</div>
	
								<button type="submit" class="btn">
									<span class="btn-title">Add To Cart</span>
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<!--tabs line start-->
						<section class="round-tabs margin-bottom-50">
							<ul class="nav nav-pills margin-bottom-20">
								<li><a class="active" data-toggle="tab" href="#tab-01">Description</a>
								</li>
							</ul>
							<div class="panel-body">
								<div class="tab-content">
									<div id="tab-01" class="tab-pane active">${product.pdesc}</div>
									
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="row product-grid">
					<div class="col-md-12">
						<h3 class="related-title">You may also like</h3>
					</div>
					<!-- Product items -->
					<div class="col-md-4">
						<div class="shop-entry text-center margin-bottom-30">
							<figure>
								<img src="img/burger1.jpg" alt="">
							</figure>
							<div class="caption">
								<h3>
									<a class="link link-default" href="menu-single.html"
										tabindex="0">Le Pigeon Burger</a>
								</h3>
								<p class="text-italic">Lorem ipsum dolor sit amet,
									consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
									Aenean massa. natoque penatibus et magnis</p>
								<p class="price">$12.50</p>
								<a class="btn btn-border btn-gray" href="#">Order Now</a>
							</div>
						</div>
					</div>
					<!-- Product items -->
					<div class="col-md-4">
						<div class="shop-entry text-center margin-bottom-30">
							<figure>
								<img src="img/burger2.jpg" alt="">
							</figure>
							<div class="caption">
								<h3>
									<a class="link link-default" href="menu-single.html"
										tabindex="0">Double Animal Style</a>
								</h3>
								<p class="text-italic">Lorem ipsum dolor sit amet,
									consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
									Aenean massa. natoque penatibus et magnis</p>
								<p class="price">$12.50</p>
								<a class="btn btn-border btn-gray" href="#">Order Now</a>
							</div>
						</div>
					</div>
					<!-- Product items -->
					<div class="col-md-4">
						<div class="shop-entry text-center margin-bottom-30">
							<figure>
								<img src="img/burger3.jpg" alt="">
							</figure>
							<div class="caption">
								<h3>
									<a class="link link-default" href="menu-single.html"
										tabindex="0">Whiskey King Burger</a>
								</h3>
								<p class="text-italic">Lorem ipsum dolor sit amet,
									consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
									Aenean massa. natoque penatibus et magnis</p>
								<p class="price">$12.50</p>
								<a class="btn btn-border btn-gray" href="#">Order Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>



		<c:import url="/footer"></c:import>




	</div>
	<div id="go-top">
		<i class="ti-angle-up"></i>
	</div>
	<!-- Javascript-->
	<c:import url="/js"></c:import>
</body>
</html>