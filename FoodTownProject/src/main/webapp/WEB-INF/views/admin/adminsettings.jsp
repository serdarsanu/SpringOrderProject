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
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<h1>Add Admin</h1>
							<div class="card card-primary">
								<div class="card-header">
									<h2 class="card-title"></h2>
								</div>
								<form
									action=<s:url value="${ us != null ? '/admin/adminUpdate' : '/admin/adminInsert' }"></s:url>
									method="post" role="form">
									<div class="card-body">
										<div class="form-group">
											<label>Name and Surname</label> <input
												value="${us.adminname }" name="adminname" type="text"
												class="form-control" placeholder="Name and Surname" required />
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Mail</label> <input
												value="${us.adminmail }" name="adminmail" type="email"
												class="form-control" placeholder="E-mail" required />
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Password</label> <input
												name="adminpassword" type="password" class="form-control"
												placeholder="Password" required />
										</div>
										<div class="form-group">
											<input name="adminpasscode" type="hidden"
												class="form-control" id="exampleInputPassword1"
												placeholder="Password">
										</div>
										<button type="submit" class="btn btn-primary">Add</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-6">
							<h1>Admin List</h1>
							<div class="card">
								<div class="card-header">
									<h3 class="card-title"></h3>
								</div>
								<div class="card-body">
									<table style="width: 500" class="table table-bordered">
										<thead>
											<tr>
												<th style="width: 10px">#</th>
												<th>Name</th>
												<th>Mail</th>
												<th style="width: 200px">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${ not empty ls }">
												<c:forEach items="${ls }" var="item">
													<tr>
														<td>${item.adminid }</td>
														<td>${item.adminname }</td>
														<td>${item.adminmail }</td>
														<td><a
															href='<s:url value="/admin/deleteAdmin/${ item.adminid }"></s:url>'
															style="font-size: 13px" class="btn btn-danger">Delete</a>
															<a
															href='<s:url value="/admin/adminUpdate/${ item.adminid }"></s:url>'
															style="font-size: 13px" class="btn btn-info">Update</a></td>
													</tr>
												</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<aside class="control-sidebar control-sidebar-dark"></aside>
	<c:import url="/admin/js"></c:import>
</body>
</html>
