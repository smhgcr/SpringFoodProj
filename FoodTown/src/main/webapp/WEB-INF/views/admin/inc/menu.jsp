<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index3.html" class="brand-link"> <img
		src="../../../../resources/dist/img/AdminLTELogo.png"
		alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
		style="opacity: .8"> <span class="brand-text font-weight-light">AdminLTE
			3</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src="resources/dist/img/user2-160x160.jpg"
					class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block">Alexander Pierce</a>
			</div>
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-item has-treeview menu-open"><a href="#"
					class="nav-link active"> <i
						class="nav-icon fas fa-tachometer-alt"></i>
						<p>
							Dashboard <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/dashboard"></s:url>'
							class="nav-link ${link == 'admin'? 'active':'' } "> <i
								class="far fa-circle nav-icon"></i>
								<p>Admin Home</p>
						</a></li>
						
						<li class="nav-item"><a
							href='<s:url value="/admin/order"></s:url>'
							class="nav-link ${link == 'order'? 'active':'' } "> <i
								class="far fa-circle nav-icon"></i>
								<p>Order</p>
						</a></li>

						<li class="nav-item"><a
							href='<s:url value="/admin/product"></s:url>'
							class="nav-link ${link == 'product'? 'active':'' } "> <i
								class="far fa-circle nav-icon"></i>
								<p>Product</p>
						</a></li>

						<li class="nav-item"><a href="./index3.html" class="nav-link ${link == 'customer'? 'active':'' }">
								<i class="far fa-circle nav-icon"></i>
								<p>Customer</p>
						</a></li>
					</ul></li>

				<li class="nav-item"><a
					href='<s:url value="/admin/exit"></s:url>' class="nav-link"> <i
						class="nav-icon far fa-circle text-danger"></i>
						<p class="text">Exit</p>
				</a></li>

			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>