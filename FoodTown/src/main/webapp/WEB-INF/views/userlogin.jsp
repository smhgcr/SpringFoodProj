<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<div class="login-form">



                <form:form action="login" method="POST" modelAttribute="newCustomer" >   
               		<c:if test="${!loggedIn and (loggedIn ne null)}">
						<div class="alert alert-danger">
						  Username or password is incorrect!
						</div>
					</c:if>            
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="email">Email address</label>
                            <input name="cmail" type="email" id="email">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="password">Password</label>
                            <input name="cpass" type="password" id="password">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="row margin-bottom-30 rmber-area">
                            <div class="col-6">
                                <div class="custom-control custom-checkbox primary-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="remember">
                                    <label class="custom-control-label" for="remember">Remember Me</label>
                                </div>
                            </div>
                        </div>
                        <div class="submit-btn-area">
                        
                        <form:button class="btn btn-rounded btn-full" id="customer" name="customer">Login</form:button>
                           
                            <div class="login-other row margin-30">
                                <div class="col-6">
                                    <a class="fb-login" href="#"><span class="login_txt">Log in with</span><i class="fab fa-facebook-f"></i></a>
                                </div>
                                <div class="col-6">
                                    <a class="google-login" href="#"><span class="login_txt">Log in with</span><i class="fab fa-google"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer text-center margin-top-30">
                            <p class="text-muted">Don't have an account? <a href="register.html">Sign up</a></p>
                        </div>
                    </div>
                </form:form>
                
                
            </div>
    </div>
    </div>
    </div>
    </section>



       <c:import url="/footer"></c:import>
    
    
    </div>
    <div id="go-top"><i class="ti-angle-up"></i></div>
    <!-- Javascript-->
      <script src='<s:url value="/resources/js/scripts.js"></s:url>'></script>
    <script src='<s:url value="/resources/js/custom.js"></s:url>'></script>         
</body>
</html>