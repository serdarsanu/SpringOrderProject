<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="">
<meta name="description" content="">
<meta name="keywords" content="">
<title>FoodTown | Menu</title>
<c:import url="/css"></c:import>
</head>
<body class="wow-animation">
	<c:import url="/navbar"></c:import>
	<section
		class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
		<div class="container">
			<div class="row product-details">
				<div class="image-column col-md-6 col-sm-12">
					<figure class="image-box">
						<img src="${ShowProduct.productimage }" alt="">
					</figure>
				</div>
				<div class="info-column col-md-6 col-sm-12">
					<div class="container">
						<div class="details-header">
							<form
								action='<s:url value="/addcart/${ShowProduct.productid }"></s:url>'
								method="post">
								<div class="form-group">
									<input
										style="font-size: 50px; background-color: transparent; border: none; font-weight: bold"
										value="${ShowProduct.productname }" required="required"
										name="productname" type="text" class="form-control"
										placeholder="Adı" readonly>
								</div>
								<style>
input[type=number], input[type=number]:hover, input[type=number]:focus {
	border: 0;
	outline: none;
	outline-offset: 0;
	color: gray;
	font-size: 13px;
}

input[type=number]:focus, input[type=number]:active {
	border: 0;
	outline: none;
	outline-offset: 0;
	color: #555;
	font-size: 13px;
}

.input {
	border: none;
	padding: 2px;
	color: red;
	font-size: 60px;
	font-weight: bold;
}
</style>
								<div class="form-group">
									<span class="input">&#36;${ShowProduct.productprice }<input
										name="productprice" type="hidden"
										value="${ShowProduct.productprice }"></span>
								</div>
								<div class="text">${ShowProduct.producttext }</div>
								<div class="form-group">
									<input value="Ready to Deliver" required="required"
										name="orderstatus" type="hidden" class="form-control" readonly>
								</div>
								<button type="submit" class="btn btn-success">Add to
									Cart</button>
							</form>
							<div class="other-options clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<c:import url="/js"></c:import>
	<c:import url="/footer"></c:import>
	<div id="go-top">
		<i class="fas fa-arrow-up"></i>
	</div>
</body>
</html>