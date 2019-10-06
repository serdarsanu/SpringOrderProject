<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
	function alt2() {
		const cnf = alert("Your order has received!");
		if (cnf) {
			return true;
		} else {
			return false;
		}
	}
</script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="">
<meta name="description" content="">
<meta name="keywords" content="">
<title>FoodTown | Order</title>
<c:import url="/css"></c:import>
</head>
<body class="wow-animation">
	<header>
		<c:import url="/navbar"></c:import>
	</header>
	<section class="jl-page-content margin-40 margin-sm-50">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<table class="table table-bordered shop-cart margin-bottom-50">
						<thead>
							<tr>
								<th class="product-name text-center">Product</th>
								<th class="product-price text-center">Price</th>
								<th class="product-price text-center">Status</th>
								<th class="product-price text-center">Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty cartdata }">
								<c:forEach items="${cartdata }" var="item">
									<tr class="cart_item">
										<td><a name="productname"></a>${item.productname }</td>
										<td><a name="productprice"></a>${item.productprice }</td>
										<td><a name="orderstatus"></a>${item.orderstatus }</td>
										<td class="delete text-center"><a
											href='<s:url value="/delete/${item.cartid}"></s:url>'
											class="btn btn-danger">Delete</a></td>
									</tr>
								</c:forEach>
							</c:if>
							<tr class="cart_item">
								<td class="orderprice">
									<h6>Order Price: $${total}</h6>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 col-lg-6 pb-5">
				<form onsubmit="return alert('Your order has received!');"
					action='<s:url value="/order"></s:url>' method="post">
					<div class="card border-primary rounded-0">
						<div class="card-header p-0">
							<div class="bg-info text-white text-center py-2">
								<h3>
									<i class="fa fa-envelope"></i> Details
								</h3>
								<p class="m-0">Final step to your delicious food!</p>
							</div>
						</div>
						<div class="card-body p-3">
							<div class="form-group">
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="fa fa-user text-info"></i>
										</div>
									</div>
									<input name="ordername" type="text" class="form-control"
										placeholder="Name" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="fa fa-envelope text-info"></i>
										</div>
									</div>
									<input name="orderaddress" type="text" class="form-control"
										placeholder="Address" />
								</div>
							</div>
							<c:if test="${not empty cartdata }">
								<c:forEach items="${cartdata }" var="item">
									<input name="productname" type="hidden"
										value="${item.productname }">
								</c:forEach>
							</c:if>
							<input name="orderstatus" value="Ready to Deliver"
								required="required" type="hidden" class="form-control">
							<div class="form-group">
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="fa fa-envelope text-info"></i>
										</div>
									</div>
									<input name="orderphone" type="text" class="form-control"
										placeholder="Phone Number" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="fa fa-comment text-info"></i>
										</div>
									</div>
									<textarea name="ordernote" class="form-control"
										placeholder="Message"></textarea>
								</div>
							</div>
							<input name="orderprice" type="hidden" value="${total }">
							<div class="text-center">
								<input type="submit" value="Order"
									class="btn btn-info btn-block rounded-0 py-2"
									style="background-color: green">
							</div>
							<div class="row">
								<div class="col-sm-4"></div>
								<div class="col-sm-4">
									<script></script>
								</div>
								<div class="col-sm-4"></div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="go-top">
		<i class="fas fa-arrow-up"></i>
	</div>
	<c:import url="/js"></c:import>
	<c:import url="/footer"></c:import>
</body>
</html>