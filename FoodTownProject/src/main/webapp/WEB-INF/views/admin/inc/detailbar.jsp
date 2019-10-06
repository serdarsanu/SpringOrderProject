<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container-fluid">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-lg-3 col-6">
			<!-- small box -->
			<div class="small-box bg-info">
				<div class="inner">
					<h3>${productcount}</h3>
					<p>Product List</p>
				</div>
				<div class="icon">
					<i class="ion ion-bag"></i>
				</div>
				<a href='<s:url value="/admin/productlist"></s:url>'
					class="small-box-footer">More info <i
					class="fas fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-6">
			<!-- small box -->
			<div class="small-box bg-success">
				<div class="inner">
					<h3>${ordercount }</h3>
					<p>Order List</p>
				</div>
				<div class="icon">
					<i class="ion ion-stats-bars"></i>
				</div>
				<a href='<s:url value="/admin/orderlist"></s:url>'
					class="small-box-footer">More info <i
					class="fas fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-6">
			<!-- small box -->
			<div class="small-box bg-warning">
				<div class="inner">
					<h3>${usercount }</h3>
					<p>User List</p>
				</div>
				<div class="icon">
					<i class="ion ion-person-add"></i>
				</div>
				<a href='<s:url value="/admin/userlist"></s:url>'
					class="small-box-footer">More info<i
					class="fas fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<div class="col-lg-3 col-6">
			<!-- small box -->
			<div class="small-box bg-danger">
				<div class="inner">
					<h3>${contactcount }</h3>
					<p>Contact List</p>
				</div>
				<div class="icon">
					<i class="ion ion-ios-email"></i>
				</div>
				<a href='<s:url value="/admin/contactlist"></s:url>'
					class="small-box-footer">More info<i
					class="fas fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
	</div>
</div>