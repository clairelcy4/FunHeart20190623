<%--
	執行本網頁之前，會先執行_02_login.filter.FindUserPassword.java這個過濾器。執行過濾器目的
	在檢視請求物件是否含有帳號與密碼等資料。
	  
        本網頁 login.jsp 提供登入的畫面，讓使用者輸入帳號與密碼。輸入完畢後，按下Submit按鈕，瀏覽器
        會帳號與密碼給  <Form>標籤action屬性對應的程式: _02_login.controller.LoginServlet.java，
        由該Servlet來檢查帳號與密碼是否正確。
            
--%>
<!DOCTYPE HTML>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<title>放心玩-登入</title>
<style type="text/css"></style>
<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/mag/style.css">
<!-- css_owl.carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.theme.default.css">
<!-- css_OverlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/OverlayScrollbars.css">
<!-- css_font-awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/font-awesome.min.css">


<script type="text/javascript">
	//由<body>的onLoad事件處理函數觸發此函數
	function setFocusToUserId() {
		document.forms[0].userId.focus(); // 將游標放在userId欄位內
	}
</script>

</head>
<body onLoad="setFocusToUserId()">


	<!-- 下列敘述設定變數funcName的值為LOG，top.jsp 會用到此變數 -->
	<!-- 特別注意這邊!!! -->
	<c:set var="funcName" value="LOG" scope="session" />
	<c:set var="msg" value="登入" />

	<!-- 引入共同的頁首 -->
	<jsp:include page="/fragment/top.jsp" />

	<!-- 預留section高度防止置頂時被遮住 -->
	<section id="section-space"></section>






	<!-- ##### Hero Area Start ##### -->
	<div class="hero-area owl-carousel">
		<!-- Single Blog Post -->
		<div class="hero-blog-post bg-img bg-overlay"
			style="background-image: url(img/bg-img/1.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<!-- Post Contetnt -->
						<div class="post-content text-center">
							<div class="post-meta" data-animation="fadeInUp"
								data-delay="100ms">
								<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
							</div>
							<a href="video-post.html" class="post-title"
								data-animation="fadeInUp" data-delay="300ms">Party Jokes
								Startling But Unnecessary</a> <a href="video-post.html"
								class="video-play" data-animation="bounceIn" data-delay="500ms"><i
								class="fa fa-play"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="hero-blog-post bg-img bg-overlay"
			style="background-image: url(img/bg-img/2.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<!-- Post Contetnt -->
						<div class="post-content text-center">
							<div class="post-meta" data-animation="fadeInUp"
								data-delay="100ms">
								<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
							</div>
							<a href="video-post.html" class="post-title"
								data-animation="fadeInUp" data-delay="300ms">Party Jokes
								Startling But Unnecessary</a> <a href="video-post.html"
								class="video-play" data-animation="bounceIn" data-delay="500ms"><i
								class="fa fa-play"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Single Blog Post -->
		<div class="hero-blog-post bg-img bg-overlay"
			style="background-image: url(img/bg-img/3.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<!-- Post Contetnt -->
						<div class="post-content text-center">
							<div class="post-meta" data-animation="fadeInUp"
								data-delay="100ms">
								<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
							</div>
							<a href="video-post.html" class="post-title"
								data-animation="fadeInUp" data-delay="300ms">Party Jokes
								Startling But Unnecessary</a> <a href="video-post.html"
								class="video-play" data-animation="bounceIn" data-delay="500ms"><i
								class="fa fa-play"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Mag Posts Area Start ##### -->
	<section class="mag-posts-area d-flex flex-wrap">

		<!-- >>>>>>>>>>>>>>>>>>>>
         Post Left Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->
		<div
			class="post-sidebar-area left-sidebar mt-30 mb-30 bg-white box-shadow">
			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Most Popular</h5>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/4.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Global Travel
							And Vacations Luxury Travel</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/5.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Cruising
							Destination Ideas</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/6.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">The Luxury Of
							Traveling With</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/7.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Choose The
							Perfect Accommodations</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/8.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">A Guide To Rocky
							Mountain Vacations</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>
			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget">
				<a href="#" class="add-img"><img src="../vendor/mag/img/bg-img/add.png" alt=""></a>
			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Latest Videos</h5>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/9.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Coventry City
							Guide Including Coventry</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/10.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Choose The
							Perfect Accommodations</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/11.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Get Ready Fast
							For Fall Leaf Viewing</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/12.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Global Resorts
							Network Grn Putting</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

				<!-- Single Blog Post -->
				<div class="single-blog-post d-flex">
					<div class="post-thumbnail">
						<img src="../vendor/mag/img/bg-img/13.jpg" alt="">
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">Travel Prudently
							Luggage And Carry</a>
						<div class="post-meta d-flex justify-content-between">
							<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a> <a
								href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
								84</a> <a href="#"><i class="fa fa-comments-o"
								aria-hidden="true"></i> 14</a>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- >>>>>>>>>>>>>>>>>>>>
             Main Posts Area
        <<<<<<<<<<<<<<<<<<<<< -->
		<div class="mag-posts-content mt-30 mb-30 p-30 box-shadow">

			<!-- Feature Video Posts Area -->
			<div class="feature-video-posts mb-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Featured Videos</h5>
				</div>

				<div class="featured-video-posts">
					<div class="row">
						<div class="col-12 col-lg-7">
							<!-- Single Featured Post -->
							<div class="single-featured-post">
								<!-- Thumbnail -->
								<div class="post-thumbnail mb-50">
									<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a
										href="video-post.html" class="video-play"><i
										class="fa fa-play"></i></a>
								</div>
								<!-- Post Contetnt -->
								<div class="post-content">
									<div class="post-meta">
										<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
									</div>
									<a href="video-post.html" class="post-title">A Closer Look
										At Our Front Porch Items From Lowe’s</a>
									<p>Excepteur sint occaecat cupidatat non proident, sunt in
										culpa qui officia deserunt mollit anim id est laborum. Sed ut
										perspiciatis unde omnis iste natus error sit voluptatem
										accusantium doloremque laudantium</p>
								</div>
								<!-- Post Share Area -->
								<div
									class="post-share-area d-flex align-items-center justify-content-between">
									<!-- Post Meta -->
									<div class="post-meta pl-3">
										<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
											1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
											aria-hidden="true"></i> 834</a> <a href="#"><i
											class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
									</div>
									<!-- Share Info -->
									<div class="share-info">
										<a href="#" class="sharebtn"><i class="fa fa-share-alt"
											aria-hidden="true"></i></a>
										<!-- All Share Buttons -->
										<div class="all-share-btn d-flex">
											<a href="#" class="facebook"><i class="fa fa-facebook"
												aria-hidden="true"></i></a> <a href="#" class="twitter"><i
												class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
												class="google-plus"><i class="fa fa-google-plus"
												aria-hidden="true"></i></a> <a href="#" class="instagram"><i
												class="fa fa-instagram" aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-5">
							<!-- Featured Video Posts Slide -->
							<div class="featured-video-posts-slide owl-carousel">

								<div class="single--slide">
									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/23.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">Global
												Resorts Network Grn Putting Timeshares To Shame</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/24.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">A Guide To
												Rocky Mountain Vacations</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/25.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">American
												Standards And European Culture How To Avoid</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/26.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">Mother
												Earth Hosts Our Travels</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/27.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">From
												Wetlands To Canals And Dams Amsterdam Is Alive</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>
								</div>

								<div class="single--slide">
									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/23.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">Global
												Resorts Network Grn Putting Timeshares To Shame</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/24.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">A Guide To
												Rocky Mountain Vacations</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/25.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">American
												Standards And European Culture How To Avoid</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/26.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">Mother
												Earth Hosts Our Travels</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>

									<!-- Single Blog Post -->
									<div class="single-blog-post d-flex style-3">
										<div class="post-thumbnail">
											<img src="../vendor/mag/img/bg-img/27.jpg" alt="">
										</div>
										<div class="post-content">
											<a href="single-post.html" class="post-title">From
												Wetlands To Canals And Dams Amsterdam Is Alive</a>
											<div class="post-meta d-flex">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 834</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Most Viewed Videos -->
			<div class="most-viewed-videos mb-30">

			<!-- Sports Videos -->
<!-- 			<div class="sports-videos-area"> -->
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Sports Videos</h5>
				</div>

				<div class="sports-videos-slides owl-carousel mb-30">
					<!-- Single Featured Post -->
					<div class="single-featured-post">
						<!-- Thumbnail -->
						<div class="post-thumbnail mb-50">
							<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a
								href="video-post.html" class="video-play"><i
								class="fa fa-play"></i></a>
						</div>
						<!-- Post Contetnt -->
						<div class="post-content">
							<div class="post-meta">
								<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
							</div>
							<a href="video-post.html" class="post-title">A Closer Look At
								Our Front Porch Items From Lowe’s</a>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in
								culpa qui officia deserunt mollit anim id est laborum. Sed ut
								perspiciatis unde omnis iste natus error sit voluptatem
								accusantium doloremque laudantium</p>
						</div>
						<!-- Post Share Area -->
						<div
							class="post-share-area d-flex align-items-center justify-content-between">
							<!-- Post Meta -->
							<div class="post-meta pl-3">
								<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
									aria-hidden="true"></i> 834</a> <a href="#"><i
									class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
							</div>
							<!-- Share Info -->
							<div class="share-info">
								<a href="#" class="sharebtn"><i class="fa fa-share-alt"
									aria-hidden="true"></i></a>
								<!-- All Share Buttons -->
								<div class="all-share-btn d-flex">
									<a href="#" class="facebook"><i class="fa fa-facebook"
										aria-hidden="true"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
										class="google-plus"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a> <a href="#" class="instagram"><i
										class="fa fa-instagram" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Featured Post -->
					<div class="single-featured-post">
						<!-- Thumbnail -->
						<div class="post-thumbnail mb-50">
							<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a
								href="video-post.html" class="video-play"><i
								class="fa fa-play"></i></a>
						</div>
						<!-- Post Contetnt -->
						<div class="post-content">
							<div class="post-meta">
								<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
							</div>
							<a href="video-post.html" class="post-title">A Closer Look At
								Our Front Porch Items From Lowe’s</a>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in
								culpa qui officia deserunt mollit anim id est laborum. Sed ut
								perspiciatis unde omnis iste natus error sit voluptatem
								accusantium doloremque laudantium</p>
						</div>
						<!-- Post Share Area -->
						<div
							class="post-share-area d-flex align-items-center justify-content-between">
							<!-- Post Meta -->
							<div class="post-meta pl-3">
								<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
									aria-hidden="true"></i> 834</a> <a href="#"><i
									class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
							</div>
							<!-- Share Info -->
							<div class="share-info">
								<a href="#" class="sharebtn"><i class="fa fa-share-alt"
									aria-hidden="true"></i></a>
								<!-- All Share Buttons -->
								<div class="all-share-btn d-flex">
									<a href="#" class="facebook"><i class="fa fa-facebook"
										aria-hidden="true"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
										class="google-plus"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a> <a href="#" class="instagram"><i
										class="fa fa-instagram" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Featured Post -->
					<div class="single-featured-post">
						<!-- Thumbnail -->
						<div class="post-thumbnail mb-50">
							<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a
								href="video-post.html" class="video-play"><i
								class="fa fa-play"></i></a>
						</div>
						<!-- Post Contetnt -->
						<div class="post-content">
							<div class="post-meta">
								<a href="#">MAY 8, 2018</a> <a href="archive.html">lifestyle</a>
							</div>
							<a href="video-post.html" class="post-title">A Closer Look At
								Our Front Porch Items From Lowe’s</a>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in
								culpa qui officia deserunt mollit anim id est laborum. Sed ut
								perspiciatis unde omnis iste natus error sit voluptatem
								accusantium doloremque laudantium</p>
						</div>
						<!-- Post Share Area -->
						<div
							class="post-share-area d-flex align-items-center justify-content-between">
							<!-- Post Meta -->
							<div class="post-meta pl-3">
								<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
									aria-hidden="true"></i> 834</a> <a href="#"><i
									class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
							</div>
							<!-- Share Info -->
							<div class="share-info">
								<a href="#" class="sharebtn"><i class="fa fa-share-alt"
									aria-hidden="true"></i></a>
								<!-- All Share Buttons -->
								<div class="all-share-btn d-flex">
									<a href="#" class="facebook"><i class="fa fa-facebook"
										aria-hidden="true"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
										class="google-plus"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a> <a href="#" class="instagram"><i
										class="fa fa-instagram" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<!-- Single Blog Post -->
					<div class="col-12 col-lg-6">
						<div class="single-blog-post d-flex style-3 mb-30">
							<div class="post-thumbnail">
								<img src="../vendor/mag/img/bg-img/31.jpg" alt="">
							</div>
							<div class="post-content">
								<a href="single-post.html" class="post-title">From Wetlands
									To Canals And Dams Amsterdam Is Alive</a>
								<div class="post-meta d-flex">
									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
										1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
										aria-hidden="true"></i> 834</a> <a href="#"><i
										class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Post -->
					<div class="col-12 col-lg-6">
						<div class="single-blog-post d-flex style-3 mb-30">
							<div class="post-thumbnail">
								<img src="../vendor/mag/img/bg-img/32.jpg" alt="">
							</div>
							<div class="post-content">
								<a href="single-post.html" class="post-title">From Wetlands
									To Canals And Dams Amsterdam Is Alive</a>
								<div class="post-meta d-flex">
									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
										1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
										aria-hidden="true"></i> 834</a> <a href="#"><i
										class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Post -->
					<div class="col-12 col-lg-6">
						<div class="single-blog-post d-flex style-3 mb-30">
							<div class="post-thumbnail">
								<img src="../vendor/mag/img/bg-img/33.jpg" alt="">
							</div>
							<div class="post-content">
								<a href="single-post.html" class="post-title">From Wetlands
									To Canals And Dams Amsterdam Is Alive</a>
								<div class="post-meta d-flex">
									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
										1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
										aria-hidden="true"></i> 834</a> <a href="#"><i
										class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Blog Post -->
					<div class="col-12 col-lg-6">
						<div class="single-blog-post d-flex style-3 mb-30">
							<div class="post-thumbnail">
								<img src="../vendor/mag/img/bg-img/34.jpg" alt="">
							</div>
							<div class="post-content">
								<a href="single-post.html" class="post-title">From Wetlands
									To Canals And Dams Amsterdam Is Alive</a>
								<div class="post-meta d-flex">
									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
										1034</a> <a href="#"><i class="fa fa-thumbs-o-up"
										aria-hidden="true"></i> 834</a> <a href="#"><i
										class="fa fa-comments-o" aria-hidden="true"></i> 234</a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- >>>>>>>>>>>>>>>>>>>>
         Post Right Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->
		<div class="post-sidebar-area right-sidebar mt-30 mb-30 box-shadow">

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Categories</h5>
				</div>

				<!-- Catagory Widget -->
				<ul class="catagory-widgets">
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> Life
								Style</span> <span>35</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> Travel</span>
							<span>30</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> Foods</span> <span>13</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> Game</span> <span>06</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> Sports</span>
							<span>28</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i>
								Football</span> <span>08</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> TV Show</span>
							<span>13</span></a></li>
				</ul>
			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget">
				<a href="#" class="add-img"><img src="../vendor/mag/img/bg-img/add2.png"
					alt=""></a>
			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Hot Channels</h5>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/14.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">TV Show</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> Subscribe</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/15.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">Game Channel</a>
						<a href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> Subscribe</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/16.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">Sport Channel</a>
						<a href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> Subscribe</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/17.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">Travel
							Channel</a> <a href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> Subscribe</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/18.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">LifeStyle
							Channel</a> <a href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> Subscribe</a>
					</div>
				</div>

			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>Newsletter</h5>
				</div>

				<div class="newsletter-form">
					<p>Subscribe our newsletter gor get notification about new
						updates, information discount, etc.</p>
					<form action="#" method="get">
						<input type="search" name="widget-search"
							placeholder="Enter your email">
						<button type="submit" class="btn mag-btn w-100">Subscribe</button>
					</form>
				</div>

			</div>
		</div>
	</section>
	<!-- ##### Mag Posts Area End ##### -->





	<!-- 引入共同的頁尾 -->
	<jsp:include page="/fragment/bottom.jsp" />

	<!-- bootstrap -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
	<!-- js_OverlayScrollbars -->
	<script src="./vendor/js/OverlayScrollbars.js"></script>
	<!-- js -->
	<script src="./vendor/jquery/jquery-3.3.1.min.js"></script>
	<script src="./vendor/js/main.js"></script>
	<!-- js_owl.carousel -->
	<script src="./vendor/js/owl.carousel.js"></script>


	<!-- Popper js -->
	<script src="./vendor/mag/js/bootstrap"></script>
	<!-- All Plugins js -->
	<script src="./vendor/mag/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="./vendor/mag/js/active.js"></script>
</body>
</html>