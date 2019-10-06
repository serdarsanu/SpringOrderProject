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
							<th class="product-name text-center">Blog ID</th>
							<th class="product-name text-center">Blog Title</th>
							<th class="product-price text-center">Blog Text</th>
							<th class="product-price text-center">Blog Image</th>
							<th class="product-price text-center">Blog Author Image</th>
							<th class="product-price text-center">Blog Author</th>
							<th class="product-price text-center">Blog Text Paragraph</th>
							<th class="product-price text-center">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty bloglist }">
							<c:forEach items="${bloglist }" var="item">
								<tr class="cart_item">
									<td class="product-name"><h5>${item.blogid }</h5></td>
									<td class="product-price"><span class="Price-amount">${item.blogtitle }</span></td>
									<td class="product-price"><span class="Price-amount">${item.blogtext }</span></td>
									<td class="product-price"><span class="Price-amount"><img
											src="${item.blogimage }" width=50px height=50px></span></td>
									<td class="product-price"><span class="Price-amount"><img
											src="${item.blogauthorimage }" width=50px height=50px></span></td>
									<td class="product-price"><span class="Price-amount">${item.blogauthor }</span></td>
									<td class="product-price"><span class="Price-amount">${item.blogtextparagraph }</span></td>
									<td><a
										href='<s:url value="/admin/deleteblog/${ item.blogid }"></s:url>'
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
