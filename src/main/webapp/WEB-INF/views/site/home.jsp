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
<title>FoodTown</title>
<c:import url="/css"></c:import>
</head>
<body class="wow-animation">
	<div class="site" id="page">
		<c:import url="/navbar"></c:import>
		<section>
			<div class="jl-main-slider">
				<div class="slide"
					style="background-image: url('resources/site/img/slider-2.jpg');">
					<div class="container">
						<div class="row">
							<div class="col col-md-6 slide-caption">
								<div class="slide-title">
									<span class="jl-title-info">Best Tastes with Best Prices</span>
									<h2>Burgers</h2>
								</div>
								<div class="slide-subtitle">
									<p>Best burgers in town! You will like it.</p>
								</div>
								<div class="btns">
									<a href='<s:url value="/menu"></s:url>'
										class="btn btn-lg margin-top-15; color:red;"><b>Order
											Now</b></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slide"
					style="background-image: url('resources/site/img/slider-1.jpg');">
					<div class="container">
						<div class="row">
							<div class="col col-lg-6 slide-caption">
								<div class="slide-title">
									<span class="jl-title-info">Best Tastes with Best Prices</span>
									<h2>Pizzas</h2>
								</div>
								<div class="slide-subtitle">
									<p>Try out our pizzas! You will like it.</p>
								</div>
								<div class="btns">
									<a href='<s:url value="/menu"></s:url>'
										class="btn btn-lg margin-top-15; color:red;"><b>Order
											Now</b></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="jl-feature-box padding-top-80 padding-sm-top-50">
			<div class="container">
				<div class="row">
					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-large bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/site/img/feature-box1.jpg);">
							<a href='<s:url value="/menupizza"></s:url>'
								class="feature-box-link"></a>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Pizzas</h4>
							</div>
						</div>
					</div>
					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/site/img/feature-box2.jpg);">
							<a href='<s:url value="/menudessert"></s:url>'
								class="feature-box-link"></a>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Desserts</h4>
							</div>
						</div>
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/site/img/feature-box3.jpg);">
							<a href='<s:url value="/menuvegetarian"></s:url>'
								class="feature-box-link"></a>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Vegetarians</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section
			class="jl-food-menu padding-top-50 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Always Tasty Food</span>
							<h2 class="">Choose & Enjoy</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Our menu offers you the best
								foods with best prices. Enjoy!</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">
							<li class="nav-item"><a data-toggle="tab" href="#menu1"
								class="active"><i class="foodicon-burger"></i>Menu</a></li>
						</ul>
						<div class="tab-content jl-tab-content">
							<div id="menu1" class="tab-pane active">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<c:if test="${not empty productdata }">
										<c:forEach items="${productdata }" var="item">
											<div class="col-md-4 jl-item-carousel wow fadeInUp">
												<figure>
													<img src="${item.productimage }" alt="">
												</figure>
												<div class="caption">
													<h6>
														<a class="link link-default"
															href='<s:url value="/detail/${item.productid }"></s:url>'>${item.productname }</a>
													</h6>
													<p class="text-italic">${item.producttext }</p>
													<p class="price">$${item.productprice }</p>
													<a class="btn margin-top-15"
														href='<s:url value="/detail/${item.productid }"></s:url>'>Order
														Now</a>
												</div>
											</div>
										</c:forEach>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section
			class="jl-food-blog padding-top-50 padding-bottom-30 padding-sm-top-50 padding-sm-bottom-0">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Always Tasty Food</span>
							<h2 class="">Food Latest News</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc"></div>
						</div>
					</div>
				</div>
				<div class="row blog-grid wow-outer">
					<c:if test="${not empty blogdata }">
						<c:forEach items="${blogdata }" var="item">
							<!-- Blog Entry -->
							<div class="col-md-4 wow fadeInUp">
								<div class="blog-entry">
									<div class="entry--img">
										<a href="post/${item.blogid }"><img
											src="${item.blogimage }" alt=""></a>
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
			</div>
		</section>
		<section class="padding-30 padding-sm-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Always Tasty Food</span>
							<h2 class="">Happy Customers</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">We are very pleased to get
								positive feedbacks from you!</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="jl-testimonial multi-col">
						<div class="jl-testimonial-slide" data-arrows="false"
							data-loop="true" data-dots="true" data-swipe="true"
							data-items="1" data-xs-items="1" data-sm-items="1"
							data-md-items="1" data-lg-items="3" data-xl-items="1">
							<div class="slide">
								<div class="testimonial-item">
									<div class="testimonial-image">
										<img src="resources/site/img/feedback2.png" alt="">
									</div>
									<div class="testimonial-rating star5">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="testimonial-content">“I ordered seafood pizza
										and it was delicious. Also it came in 15 minutes. Very fast
										delivery. Thank you :)”</div>
									<div class="testimonial-meta">
										<h3 class="testimonial-title">Roger Penny</h3>
										<span class="testimonial-position">Guest</span>
									</div>
								</div>
							</div>
							<div class="slide">
								<div class="testimonial-item">
									<div class="testimonial-image">
										<img src="resources/site/img/feedback3.png" alt="">
									</div>
									<div class="testimonial-rating star5">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="testimonial-content">“What a hamburger it
										was! I ordered Double Animal Style and it was perfect! Thank
										you and I'm sure that we will see us again :) ”</div>
									<div class="testimonial-meta">
										<h3 class="testimonial-title">Peter Parker</h3>
										<span class="testimonial-position">Guest</span>
									</div>
								</div>
							</div>
							<div class="slide">
								<div class="testimonial-item">
									<div class="testimonial-image">
										<img src="resources/site/img/feedback1.jpg" alt="">
									</div>
									<div class="testimonial-rating star5">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="testimonial-content">“It's nice to think the
										vegetarians. There is another menu for vegetarians and I
										ordered Brocco Flower and it was great. Thank you.”</div>
									<div class="testimonial-meta">
										<h3 class="testimonial-title">Sarah Manson</h3>
										<span class="testimonial-position">Guest</span>
									</div>
								</div>
							</div>
							<div class="slide"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<c:import url="/js"></c:import>
		<c:import url="/footer"></c:import>
	</div>
	<div id="go-top">
		<i class="fas fa-arrow-up"></i>
	</div>
</body>
</html>