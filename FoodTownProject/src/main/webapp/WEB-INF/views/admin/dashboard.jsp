<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FoodTown | Admin Panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:import url="/admin/css"></c:import>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<c:import url="/admin/header"></c:import>
		<c:import url="/admin/menu"></c:import>
		<div class="content-wrapper">
			<section class="content">
				<c:import url="/admin/detailbar"></c:import>
				<table class="table table-bordered shop-cart margin-bottom-50">
					<thead>
						<tr>
							<th class="product-name text-center">Order ID</th>
							<th class="product-price text-center">Name</th>
							<th class="product-price text-center">Address</th>
							<th class="product-price text-center">Order</th>
							<th class="product-price text-center">Phone Number</th>
							<th class="product-price text-center">Note</th>
							<th class="product-price text-center">Price</th>
							<th class="product-price text-center">Order Status</th>
							<th class="product-price text-center">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty orderlist }">
							<c:forEach items="${orderlist }" var="item">
								<tr class="cart_item">
									<style>
td {
	font-size: 15px;
}
</style>
									<td class="product-name">
										<h5>${item.orderid }</h5>
									</td>
									<td class="product-price"><span class="Price-amount">${item.ordername }</span></td>
									<td class="product-price"><span class="Price-amount">${item.orderaddress }</span></td>
									<td class="product-price"><span class="Price-amount">${item.productname }</span></td>
									<td class="product-price"><span class="Price-amount">${item.orderphone }</span></td>
									<td class="product-price"><span class="Price-amount">${item.ordernote }</span></td>
									<td class="product-price"><span class="Price-amount">$${item.orderprice
											}</span></td>
									<td class="product-price"><span class="Price-amount">${item.orderstatus }</span></td>
									<td><a
										href='<s:url value="/admin/orderdelivered/${item.orderid }"></s:url>'
										class="btn btn-success" style="font-size: 15px">Delivered</a>
									</button> <a
										href='<s:url value="/admin/orderready/${item.orderid }" ></s:url>'
										class="btn btn-primary" style="font-size: 13px">Ready to
											Deliver</a>
									</button></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</section>
		</div>
	</div>
	<aside class="control-sidebar control-sidebar-dark"></aside>
	<c:import url="/admin/js"></c:import>
</body>
</html>
