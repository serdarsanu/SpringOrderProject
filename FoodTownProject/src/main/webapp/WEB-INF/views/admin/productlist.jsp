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
			<c:import url="/admin/detailbar"></c:import>
			<section class="content">
				<table class="table table-bordered shop-cart margin-bottom-50">
					<thead>
						<tr>
							<th class="product-name text-center">Product ID</th>
							<th class="product-price text-center">Product Name</th>
							<th class="product-price text-center">Product Text</th>
							<th class="product-price text-center">Product Price</th>
							<th class="product-price text-center">Product Image</th>
							<th class="product-price text-center">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty productlist }">
							<c:forEach items="${productlist }" var="item">
								<tr class="cart_item">
									<td class="product-name"><h5>${item.productid }</h5></td>
									<td class="product-price"><span class="Price-amount">${item.productname }</span></td>
									<td class="product-price"><span class="Price-amount">${item.producttext }</span></td>
									<td class="product-price"><span class="Price-amount">$${item.productprice
											}</span></td>
									<td class="product-price"><span class="Price-amount"><img
											src="${item.productimage }" width=180px height=150px></span></td>
									<td><a
										href='<s:url value="/admin/deleteproduct/${ item.productid }"></s:url>'
										style="font-size: 13px" class="btn btn-danger">Delete</a></td>
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
