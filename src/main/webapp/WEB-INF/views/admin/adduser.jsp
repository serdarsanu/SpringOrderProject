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
			</section>
			<div class="row justify-content-center">
				<div class="col-12 col-md-8 col-lg-6 pb-5">
					<form action="adduser" method="post">
						<div class="card border-primary rounded-0">
							<div class="card-header p-0">
								<div class="bg-info text-white text-center py-2">
									<h3>
										<i class="fas fa-users"></i> Add User
									</h3>
								</div>
							</div>
							<div class="card-body p-3">
								<div class="form-group">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fas fa-info"></i>
											</div>
										</div>
										<input name="username" type="text" class="form-control"
											id="nombre" name="nombre" placeholder="Name and Surname"
											required>
									</div>
								</div>
								<div class="form-group">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fas fa-info"></i>
											</div>
										</div>
										<input name="usermail" type="text" class="form-control"
											id="nombre" name="email" placeholder="E-Mail Address"
											required>
									</div>
								</div>
								<div class="form-group">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<i class="fas fa-info"></i>
											</div>
										</div>
										<input name="userpassword" type="password"
											class="form-control" placeholder="Password" required>
									</div>
								</div>
								<div class="text-center">
									<input type="submit" value="Add"
										class="btn btn-info btn-block rounded-0 py-2"
										style="background-color: green">
								</div>
								<div class="row">
									<div class="col-sm-4"></div>
									<div class="col-sm-4">
										<script>
											
										</script>
									</div>
									<div class="col-sm-4"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<aside class="control-sidebar control-sidebar-dark"></aside>
	</div>
	<c:import url="/admin/js"></c:import>
</body>
</html>
