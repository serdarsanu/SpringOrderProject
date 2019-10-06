<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
body.bg {
	min-height: 100%;
	min-width: 1024px;
	width: 100%;
	height: auto;
	position: fixed;
	top: 0;
	left: 0;
}
</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FoodTown | Admin Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href='<s:url value="/resources/plugins/fontawesome-free/css/all.min.css"></s:url>'>
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet"
	href='<s:url value="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css"></s:url>'>
<link rel="stylesheet"
	href='<s:url value="/resources/dist/css/adminlte.min.css"></s:url>'>
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="bg"
	background="../../foodtown/resources/site/img/food-background.jpg">
	<div class="login-box">
		<div class="login-logo">
			<img src="../../../foodtown/resources/site/img/foodtownlogo.png"
				height="120px" width="350px" class="center" /> <a
				href="../../index2.html"><b>Admin</b>Panel</a>
		</div>
		<div class="card">
			<div class="card-body login-card-body">
				<c:if test="${ not empty error }">
					<p>${ error }</p>
				</c:if>
				<form action='<s:url value="/admin/login"></s:url>' method="post">
					<div class="input-group mb-3">
						<input name="adminmail" type="email" class="form-control"
							placeholder="Email">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input name="adminpassword" type="password" class="form-control"
							placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input name="remember" type="checkbox" id="remember"> <label
									for="remember"> Remember Me </label>
							</div>
						</div>
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Sign
								In</button>
						</div>
					</div>
				</form>
				<div class="social-auth-links text-center mb-3"></div>
			</div>
		</div>
	</div>
	<script
		src='<s:url value="/resources/plugins/jquery/jquery.min.js"></s:url>'></script>
	<script
		src='<s:url value="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></s:url>'></script>
</body>
</html>
