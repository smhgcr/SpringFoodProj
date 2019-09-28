<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>

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

		<!-- Slider-->
		<section>
			<div class="jl-main-slider">
				<div class="slide"
					style="background-image: url('resources/img/slider-2.jpg');">
					<div class="container">
						<div class="row">
							<div class="col col-md-6 slide-caption">
								<div class="slide-title">
									<span class="jl-title-info">Alway Tasty Food</span>
									<h2>Special Offer</h2>
								</div>
								<div class="slide-subtitle">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
										sociis natoque penatibus et magnis dis parturient montes.</p>
								</div>
								<div class="btns">
									<a href="#" class="btn btn-lg margin-top-15">Order Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slide"
					style="background-image: url('resources/img/slider-1.jpg');">

					<div class="container">
						<div class="row">
							<div class="col col-lg-6 slide-caption">

								<div class="slide-title">
									<span class="jl-title-info">Alway Tasty Food</span>
									<h2>Fresh & hot</h2>
								</div>
								<div class="slide-subtitle">
									<p>Mauris mattis auctor cursus. Phasellus tellus tellus,
										imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula
										luctus nunc in laoreet. Aliquam erat volutpat.</p>
								</div>
								<div class="btns">
									<a href="#" class="btn btn-lg margin-top-15">Order Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Feature box -->
		<section class="jl-feature-box padding-top-80 padding-sm-top-50">
			<div class="container">
				<div class="row">
					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-large bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/img/feature-box1.jpg);">
							<a href="shop-page.html" class="feature-box-link"></a>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Most Popular Pizza</h4>
							</div>
						</div>
					</div>

					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/img/feature-box2.jpg);">
							<a href="shop-page.html" class="feature-box-link"></a>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>More Fun More Taste</h4>
							</div>
						</div>
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/img/feature-box3.jpg);">
							<a href="shop-page.html" class="feature-box-link"></a>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Fresh And Chili</h4>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>



		<!-- Food Menu -->
		<section
			class="jl-food-menu padding-top-50 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Choose & enjoy</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">
							<li class="nav-item"><a data-toggle="tab" href="#menu1"
								class="active"><i class="foodicon-burger"></i>Burgers</a></li>

							<!--  		
							<li class="nav-item"><a data-toggle="tab" href="#menu2"><i
									class="foodicon-pizza-slice"></i>Pizzas</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu3"><i
									class="foodicon-salad-1"></i>Vegetarian</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu4"><i
									class="foodicon-lemonade"></i>Soft drinks</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu5"><i
									class="foodicon-cupcake-1"></i>Desserts</a></li>
					-->

						</ul>



						<div class="tab-content jl-tab-content">



							<div id="menu1" class="tab-pane active">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">



									<c:if test="${ not empty productList }">
										<c:forEach items="${productList }" var="item">


											<div class="col-md-4 jl-item-carousel wow fadeInUp">
												<figure>
													<img style="height: 250px"
														src='<s:url value="${item.pphoto }"></s:url>' alt="">
												</figure>
												<div class="caption">
													<h5>
														<a class="link link-default" href="single-shop-page.html">${item.ptitle }</a>
													</h5>
													<p class="text-italic">${item.pdesc }</p>
													<p class="price">$ ${item.pprice }</p>
													<a class="btn margin-top-15"
														href='<s:url value="/detail/${item.pid}"></s:url>'>Order
														Now</a>
												</div>
											</div>


										</c:forEach>
									</c:if>



									<!--  

							<div id="menu2" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/pizza1.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Pizza
													Alla Napoletana</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$22.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/pizza2.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Pizza
													Marinara</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$23.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/pizza3.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Pizza
													Veronese</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$24.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/pizza4.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Pizza
													Ai Quattro</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$25.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
								</div>
							</div>
							
							
							
							
							<div id="menu3" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/salad1.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Pilachu
													Fruit</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$12.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/salad2.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Choloride</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$13.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/salad3.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Brocco
													Flower</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$14.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/salad4.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Brussels
													Sprouts</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$15.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
								</div>
							</div>
							
							

							<div id="menu4" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/drink1.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Keurig
													Dr Pepper</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$12.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/drink2.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Hamoud
													Boualem</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$13.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/drink3.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">National
													Beverage</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$14.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/drink4.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Polar
													Beverages</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$15.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
								</div>
							</div>
							

							<div id="menu5" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/dessert1.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Mint
													Oreo Cake</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$12.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/dessert2.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Ultimate
													Gooey</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$13.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/dessert3.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Butter
													Finger Cookie</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$14.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src='<s:url value="resources/img/dessert4.jpg"></s:url>'
												alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href="single-shop-page.html">Meyer
													Lemon Bars</a>
											</h5>
											<p class="text-italic">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. natoque penatibus et magnis</p>
											<p class="price">$15.50</p>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
								</div>
							</div>
							
					-->






								</div>
							</div>
						</div>
					</div>
		</section>

		<!-- Special Offer -->
		<section class="jl-special-offer bg-gray padding-80 padding-sm-50">
			<div class="container">
				<div class="row">
					<div class="jl-promotion-slider" data-arrows="true"
						data-loop="true" data-dots="true" data-swipe="true" data-items="1"
						data-xs-items="1" data-sm-items="1" data-md-items="1"
						data-lg-items="1" data-xl-items="1">
						<div class="slide">
							<div class="slide-wrapper">
								<div class="slide-content">
									<div class="jl-pro-img margin-sm-bottom-20">
										<img src='<s:url value="resources/img/big-salad.png"></s:url>'
											alt="">
									</div>
									<div class="jl-pro-desc">
										<div class="jl-desc-wrapper">
											<h2 class="headline">Big Bowl Salad</h2>
											<div class="rating">
												<span class="fa fa-star"></span> <span class="fa fa-star"></span>
												<span class="fa fa-star"></span> <span class="fa fa-star"></span>
												<span class="fa fa-star"></span>
											</div>
											<a class="reviews" href="#">( 3 Customer Reviews )</a>
											<div class="item-price">
												$10.00
												<del>$15</del>
											</div>
											<p class="jl-subtitle">Lorem ipsum dolor sit amet,
												consectetuer adipiscing elit. Aenean commodo ligula eget
												dolor. Aenean massa. Cum sociis natoque penatibus et magnis
												dis parturient montes, nascetur ridiculus mus.</p>
											<div class="tagcloud">
												<span class="posted_in">Categories:</span><a href="#"
													rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>,
												<a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin
													Crust</a>
											</div>
											<a class="btn margin-top-15" href="single-shop-page.html">Order
												Now</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="slide-wrapper">
							<div class="slide-content">
								<div class="jl-pro-img">
									<img src="resources/img/big-pizza.png" alt="">
								</div>
								<div class="jl-pro-desc">
									<div class="jl-desc-wrapper">
										<h2 class="headline">Best Pizza Slide</h2>
										<div class="rating">
											<span class="fa fa-star"></span> <span class="fa fa-star"></span>
											<span class="fa fa-star"></span> <span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</div>
										<a class="reviews" href="#">( 2 Customer Reviews )</a>
										<div class="item-price">
											$20.00
											<del>$35</del>
										</div>
										<p class="jl-subtitle">Lorem ipsum dolor sit amet,
											consectetuer adipiscing elit. Aenean commodo ligula eget
											dolor. Aenean massa. Cum sociis natoque penatibus et magnis
											dis parturient montes, nascetur ridiculus mus.</p>
										<div class="tagcloud">
											<span class="posted_in">Categories:</span><a href="#"
												rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>,
											<a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin
												Crust</a>
										</div>
										<a class="btn margin-top-15" href="single-shop-page.html">Order
											Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>





		<!-- Footer-->
		<c:import url="/footer"></c:import>
	</div>
	<div id="go-top">
		<i class="ti-angle-up"></i>
	</div>
	<c:import url="/js"></c:import>
</body>
</html>
