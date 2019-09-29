<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:import url="/admin/css"></c:import>


</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">


		<c:import url="/admin/header"></c:import>
		<c:import url="/admin/menu"></c:import>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<h3>150</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>44</h3>

									<p>User Registrations</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<div class="row">

						<h1>Customer Orders</h1>
						<div class="card" style="width: 100%">

							<!-- /.card-header -->
							<c:forEach items="${ orderList }" var="order">
								<div class="card-body">

									<form:form id = "orderForm_${order.id}" commandName="orderToUpdate" method="post">
										<div>Order ID: ${order.id}</div>
										<div>Username: ${order.customer.cmail}</div>
										<div>
											<form:label path="orderStatus">Order Status: </form:label>
											<form:select path="orderStatus" onchange="submitForm('${order.id}');">
												<form:option value="NONE" label="${order.orderStatus.label }" />
												<form:options items="${statusList}" />
											</form:select>
										</div>
										<div>Create Date: ${order.createDate}</div>
										<form:input type="hidden" path="id" name="id" value="${order.id}"/>
									</form:form>
									<table class="table table-bordered">
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

											<c:forEach items="${ order.basket.basketItemList }"
												var="item">
												<tr class="cart_item">
													<td class="product-thumbnail"><img
														src='<s:url value="${ item.product.pphoto }"></s:url>'
														width="100" alt=""></td>
													<td class="product-name"><h5>${ item.product.ptitle }</h5></td>
													<td class="product-price"><span class="Price-amount">$${
															item.product.pprice }</span></td>
													<td class="product-price"><span class="Price-amount">${ item.amount }</span></td>
													<td class="product-price"><span class="Price-amount">${ item.totalPrice }</span></td>
												</tr>
											</c:forEach>

										</tbody>
									</table>

								</div>
							</c:forEach>
						</div>



					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2019 <a
				href="http://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.0.0-beta.2
			</div>
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<script type="text/javascript">
		function submitForm(orderId) {
			var myForm = document.getElementById("orderForm_" + orderId);
			myForm.submit();
		}
	</script>
	<c:import url="/admin/js"></c:import>

</body>
</html>
