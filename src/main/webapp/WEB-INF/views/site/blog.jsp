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
<body class="wow-animation">
	<c:import url="/navbar"></c:import>
	<section
		class="jl-food-blog padding-top-80 padding-bottom-30 padding-sm-top-50 padding-sm-bottom-0">
		<div class="container">
			<div class="row justify-content-center margin-bottom-50">
				<div class="col-md-8 text-center">
					<div class="jl-headding-title">
						<span class="jl-title-info">Always Tasty Food</span>
						<h2 class="">Food Blogs</h2>
						<span class="jl-headding-separator"></span>
						<div class="jl-heading-desc"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="row blog-grid wow-outer">
		<c:if test="${not empty blogdata }">
			<c:forEach items="${blogdata }" var="item">
				<div class="col-md-4 wow fadeInUp">
					<div class="blog-entry">
						<div class="entry--img">
							<a href="post/${item.blogid }"> <img src="${item.blogimage }"
								alt="">
							</a>
						</div>
						<div class="entry--meta-container">
							<div class="entry--meta-author">
								<img src="${item.blogauthorimage }" alt=""> <span>By:
									<a>${item.blogauthor }</a>
								</span>
							</div>
						</div>
						<div class="entry--content">
							<div class="entry--title">
								<h4>
									<a href="post/${item.blogid }">${item.blogtitle }</a>
								</h4>
							</div>
							<div class="a">
								<p class="">${item.blogtext }</p>
							</div>
							<br>
							<div class="entry--more">
								<a href='<s:url value="/post/${item.blogid}"></s:url>'>Read
									More</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
	<c:import url="/js"></c:import>
	<c:import url="/footer"></c:import>
	<div id="go-top">
		<i class="fas fa-arrow-up"></i>
	</div>
</body>
</html>