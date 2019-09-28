<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Header-->
        <header>
          <div class="jl_blank_nav"></div>
          <div class="jl-menu-wrapper jl_menu_sticky jl_stick">        
           <div class="container">
  <div class="row">
<div class="col-md-12">
<div class="jl_header_wrapper">
<!-- nav toggle button -->
            <button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false">
            <span></span>
            <span></span>
            <span></span>
          </button>
<!-- Logo-->
<div class="jl_logo"><a href='<s:url value="/"></s:url>'><img src='<s:url value="resources/img/logo.png"></s:url>' alt=""></a></div>
<!-- Menu-->
<div class="navigation_wrapper header-nav navbar-collapse collapse" id="navbarMobile">
<ul id="mainmenu" class="jl_main_menu">
  <li><a href="about-us.html">About Us</a></li>
  <li><a href='<s:url value="/userlogin"></s:url>'>Login</a></li>
  <li><a href='<s:url value="/register"></s:url>'>Register</a></li>
<li><a href="contact-us.html">Contact Us</a></li>

<c:if test="${customer ne null}">
	<li class="menu-item-has-children"><a href="#"><label>${customer.cname}</label></a>
	
	<ul class="sub-menu"> 
	  <li><a href='<s:url value="/logout"></s:url>'>LogOut</a></li>
	
	  </ul>
	</li>
</c:if>
</ul>
</div>

<!-- Cart and Reservation-->
<div class="jl-header-right">
<a class="jl-header-cart" href="#">
            <span class="jl-cart-icon ti-shopping-cart"></span>
            <span class="jl-cart-number"><span>0</span></span>
        </a>
<div class="jl-top-btn"><a href="#">Reservation</a></div>
</div>

</div>
</div>
  </div>
  </div>
  </div>
</header>