<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="" class="brand-link"> <span
		class="brand-text font-weight-light">FoodTown | Admin</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<li class="nav-item"><a
					href='<s:url value="/admin/dashboard"></s:url>' class="nav-link   ">
						<i class="fas fa-home"></i>
						<p>Home Page</p>
				</a></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="fas fa-utensils"></i>
						<p>
							Product<i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/productlist"></s:url>'
							class="nav-link"> <i class="fas fa-list"></i>
								<p>Product List</p>
						</a></li>
						<li class="nav-item"><a
							href='<s:url value="/admin/addproduct"></s:url>' class="nav-link">
								<i class="far fa-plus-square"></i>
								<p>Add Product</p>
						</a></li>
					</ul></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="fab fa-blogger"></i>
						<p>
							Blog<i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/bloglist"></s:url>' class="nav-link">
								<i class="fas fa-list"></i>
								<p>Blog List</p>
						</a></li>
						<li class="nav-item"><a
							href='<s:url value="/admin/addblog"></s:url>' class="nav-link">
								<i class="far fa-plus-square"></i>
								<p>Add Blog</p>
						</a></li>
					</ul></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="far fa-address-card"></i>
						<p>
							User<i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/userlist"></s:url>' class="nav-link">
								<i class="fas fa-list"></i>
								<p>User List</p>
						</a></li>
						<li class="nav-item"><a
							href='<s:url value="/admin/adduser"></s:url>' class="nav-link">
								<i class="far fa-plus-square"></i>
								<p>Add User</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a
					href='<s:url value="/admin/contactlist"></s:url>' class="nav-link">
						<i class="far fa-comment"></i>
						<p>
							Contact List<span class="badge badge-info right"></span>
						</p>
				</a></li>
				<li class="nav-item"><a
					href='<s:url value="/admin/orderlist"></s:url>' class="nav-link">
						<i class="fas fa-cart-arrow-down"></i>
						<p>
							Order List<span class="badge badge-info right"></span>
						</p>
				</a></li>
				<li class="nav-item"><a
					href='<s:url value="/admin/adminsettings"></s:url>'
					class="nav-link"> <i class="fas fa-user-cog"></i>
						<p>
							Admin Settings<span class="badge badge-info right"></span>
						</p>
				</a></li>
				<li><hr></li>
				<li class="nav-item"><a href='<s:url value="/"></s:url>'
					class="nav-link"> <i class="fas fa-igloo"></i>
						<p>
							Go To FoodTown<span class="badge badge-info right"></span>
						</p>
				</a></li>
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