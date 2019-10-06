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
<title>FoodTown | Blog</title>
<c:import url="/css"></c:import>
</head>
<body>
	<div class="container">
		<c:import url="/navbar"></c:import>
		<div class="row">
			<div class="col-lg-8">
				<h2 class="mt-4">${ShowBlog.blogtitle}</h2>
				<p class="lead">by ${ShowBlog.blogauthor}</p>
				<img class="img-fluid rounded" src="${ShowBlog.blogimage}" alt="">
				<hr>
				<p class="lead">${ShowBlog.blogtext}</p>
				<p>${ShowBlog.blogtextparagraph}</p>
				<hr>
			</div>
		</div>
	</div>
	<c:import url="/js"></c:import>
	<c:import url="/footer"></c:import>
	<div id="go-top">
		<i class="fas fa-arrow-up"></i>
	</div>
</body>
</html>