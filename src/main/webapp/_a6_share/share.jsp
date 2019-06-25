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


	<!-- ##### Mag Posts Area Start ##### -->
	<section class="mag-posts-area d-flex flex-wrap">


		<!-- >>>>>>>>>>>>>>>>>>>>
             Main Posts Area
        <<<<<<<<<<<<<<<<<<<<< -->
		<div class="mag-posts-content mt-30 mb-30 p-30 box-shadow" style="width: 965px;">

			<!-- Feature Video Posts Area -->
			<div class="feature-video-posts mb-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>熱門貼文</h5>
				</div>

				<div class="featured-video-posts">
					<div class="row">
						<div class="col-12">
							<!-- Single Featured Post 1-->
							<div class="single-featured-post">

								<!-- 熱門貼文START -->
								<div class="media">
									<img src="../vendor/images/share/彭大 x 日本美型蒸氣掛燙機.jpg"
										class="mr-3" alt="..." style="width: 200px; height: 200px;">
									<div class="media-body">
										<!-- Post Contetnt -->
										<div class="post-content">
											<a
												href="https://p3.groupbuyforms.tw/ulfpi?fbclid=IwAR12fS4CXoX7q6P_Zy9P0UG4pjJdwfoG-DgDGOlEzlxKqESKLWNTHY3T4K4"
												class="post-title">彭大 x 日本美型蒸氣掛燙機</a>
											<div class="post-meta">
												<a href="#">2019.06.07</a> <a href="">好康優惠</a>
											</div>
											<p>
												沖繩一哥彭大家族限定好康又來了！這次是輕巧方便的手持式蒸氣熨斗，外出旅行攜帶方便，可搭配多種配件使用。<br>團購倒數六天，數量有限！
											</p>
										</div>
										<!-- Post Share Area -->
										<div
											class="post-share-area d-flex align-items-center justify-content-between">
											<!-- Post Meta -->
											<div class="post-meta pl-3">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													3064</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 736</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 385</a>
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
								<!-- 熱門貼文END -->
								<!-- 熱門貼文START -->
								<div class="media mt-3">
									<img src="../vendor/images/share/shareAshibana.jpg"
										class="mr-3" alt="..." style="width: 200px; height: 200px;">
									<div class="media-body">
										<!-- Post Contetnt -->
										<div class="post-content">
											<a
												href="https://p3.groupbuyforms.tw/ulfpi?fbclid=IwAR12fS4CXoX7q6P_Zy9P0UG4pjJdwfoG-DgDGOlEzlxKqESKLWNTHY3T4K4"
												class="post-title">沖繩outlet購物城ASHIBINAA</a>
											<div class="post-meta">
												<a href="#">2019.06.09</a> <a href="">好康優惠</a>
											</div>
											<p>最近大家如果在沖繩可以去outlet
												挖寶喔，星期六去愛迪達本身折扣完再打六折，兩雙鞋兩件外套兩件衣服折扣完不到12000日幣，真的非常划算，還可退稅，UA的衣服也是可以參考參考
											</p>
										</div>
										<!-- Post Share Area -->
										<div
											class="post-share-area d-flex align-items-center justify-content-between">
											<!-- Post Meta -->
											<div class="post-meta pl-3">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													6434</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 868</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 2355</a>
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
								<!-- 熱門貼文END -->

								<br>

								<!-- 熱門貼文START -->
								<div class="media mt-1">
									<img src="../vendor/images/share/share租機車.jpg"
										class="mr-3" alt="..." style="width: 200px; height: 200px;">
									<div class="media-body">
										<!-- Post Contetnt -->
										<div class="post-content">
											<a
												href="https://p3.groupbuyforms.tw/ulfpi?fbclid=IwAR12fS4CXoX7q6P_Zy9P0UG4pjJdwfoG-DgDGOlEzlxKqESKLWNTHY3T4K4"
												class="post-title">在日本租機車</a>
											<div class="post-meta">
												<a href="#">2018.12.30</a> <a href="">交通</a>
											</div>
											<p>在日本騎機車就跟開車一樣 沒有分線 跟汽車同線道 台灣騎機車只能在外線機車道 等於騎在汽車道 滿新奇😂
												不過有速限40-50也不能騎快 日本很遵守交通規則禮讓行人</p>
										</div>
										<!-- Post Share Area -->
										<div
											class="post-share-area d-flex align-items-center justify-content-between">
											<!-- Post Meta -->
											<div class="post-meta pl-3">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													9577</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 3886</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 2567</a>
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
								<!-- 熱門貼文END -->


								<!-- 熱門貼文START -->
								<div class="media mt-1">
									<img src="../vendor/images/share/share島潛水.jpg"
										class="mr-3" alt="..." style="width: 200px; height: 200px;">
									<div class="media-body">
										<!-- Post Contetnt -->
										<div class="post-content">
											<a
												href="https://p3.groupbuyforms.tw/ulfpi?fbclid=IwAR12fS4CXoX7q6P_Zy9P0UG4pjJdwfoG-DgDGOlEzlxKqESKLWNTHY3T4K4"
												class="post-title">慶良間諸島潛水</a>
											<div class="post-meta">
												<a href="#">2019.05.15</a> <a href="">景點</a>
											</div>
											<p>
												社團裡的前輩常常說著「慶良間諸島」有多麼美，剛好社團新配合的潛店［海潛］推出了慶良間諸島船潛，開幕期間還有9折優惠，不多猶豫馬上報名。
												一早約定在三重港集合，這港口位置非常方便⋯</p>
										</div>
										<!-- Post Share Area -->
										<div
											class="post-share-area d-flex align-items-center justify-content-between">
											<!-- Post Meta -->
											<div class="post-meta pl-3">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													7464</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 4332</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 648</a>
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
								<!-- 熱門貼文END -->

								<!-- 熱門貼文START -->
								<div class="media mt-1">
									<img src="../vendor/images/share/share吐司.jpg"
										class="mr-3" alt="..." style="width: 200px; height: 200px;">
									<div class="media-body">
										<!-- Post Contetnt -->
										<div class="post-content">
											<a
												href="https://p3.groupbuyforms.tw/ulfpi?fbclid=IwAR12fS4CXoX7q6P_Zy9P0UG4pjJdwfoG-DgDGOlEzlxKqESKLWNTHY3T4K4"
												class="post-title">乃吐司購買分享文</a>
											<div class="post-meta">
												<a href="#">2019.06.07</a> <a href="">飲食</a>
											</div>
											<p>如果想買吐司回台灣又怕壓壞可以參考裝箱 *店員會很仔細的一條吐司放一個隔板 *一個箱子可以裝3條剛剛好
												*箱子加購一個130日圓 *常溫可以保存4天（20-25度 補充-幫大家補上箱子的尺寸做參考</p>
										</div>
										<!-- Post Share Area -->
										<div
											class="post-share-area d-flex align-items-center justify-content-between">
											<!-- Post Meta -->
											<div class="post-meta pl-3">
												<a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
													5846</a> <a href="#"><i class="fa fa-thumbs-o-up"
													aria-hidden="true"></i> 376</a> <a href="#"><i
													class="fa fa-comments-o" aria-hidden="true"></i> 935</a>
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
								<!-- 熱門貼文END -->


							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 			<!-- Most Viewed Videos -->
			<!-- 			<div class="most-viewed-videos mb-30"> -->


			<!-- 				Section Title -->
			<!-- 				<div class="section-heading"> -->
			<!-- 					<h5>Sports Videos</h5> -->
			<!-- 				</div> -->

			<!-- 				<div class="sports-videos-slides owl-carousel mb-30"> -->
			<!-- 					Single Featured Post -->
			<!-- 					<div class="single-featured-post"> -->
			<!-- 						Thumbnail -->
			<!-- 						<div class="post-thumbnail mb-50"> -->
			<!-- 							<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a -->
			<!-- 								href="video-post.html" class="video-play"><i -->
			<!-- 								class="fa fa-play"></i></a> -->
			<!-- 						</div> -->
			<!-- 						Post Share Area -->
			<!-- 						<div -->
			<!-- 							class="post-share-area d-flex align-items-center justify-content-between"> -->
			<!-- 							Post Meta -->
			<!-- 							<div class="post-meta pl-3"> -->
			<!-- 								<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 									1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 									aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 									class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 							</div> -->
			<!-- 							Share Info -->
			<!-- 							<div class="share-info"> -->
			<!-- 								<a href="#" class="sharebtn"><i class="fa fa-share-alt" -->
			<!-- 									aria-hidden="true"></i></a> -->
			<!-- 								All Share Buttons -->
			<!-- 								<div class="all-share-btn d-flex"> -->
			<!-- 									<a href="#" class="facebook"><i class="fa fa-facebook" -->
			<!-- 										aria-hidden="true"></i></a> <a href="#" class="twitter"><i -->
			<!-- 										class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#" -->
			<!-- 										class="google-plus"><i class="fa fa-google-plus" -->
			<!-- 										aria-hidden="true"></i></a> <a href="#" class="instagram"><i -->
			<!-- 										class="fa fa-instagram" aria-hidden="true"></i></a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->

			<!-- 					Single Featured Post -->
			<!-- 					<div class="single-featured-post"> -->
			<!-- 						Thumbnail -->
			<!-- 						<div class="post-thumbnail mb-50"> -->
			<!-- 							<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a -->
			<!-- 								href="video-post.html" class="video-play"><i -->
			<!-- 								class="fa fa-play"></i></a> -->
			<!-- 						</div> -->

			<!-- 						Post Share Area -->
			<!-- 						<div -->
			<!-- 							class="post-share-area d-flex align-items-center justify-content-between"> -->
			<!-- 							Post Meta -->
			<!-- 							<div class="post-meta pl-3"> -->
			<!-- 								<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 									1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 									aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 									class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 							</div> -->
			<!-- 							Share Info -->
			<!-- 							<div class="share-info"> -->
			<!-- 								<a href="#" class="sharebtn"><i class="fa fa-share-alt" -->
			<!-- 									aria-hidden="true"></i></a> -->
			<!-- 								All Share Buttons -->
			<!-- 								<div class="all-share-btn d-flex"> -->
			<!-- 									<a href="#" class="facebook"><i class="fa fa-facebook" -->
			<!-- 										aria-hidden="true"></i></a> <a href="#" class="twitter"><i -->
			<!-- 										class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#" -->
			<!-- 										class="google-plus"><i class="fa fa-google-plus" -->
			<!-- 										aria-hidden="true"></i></a> <a href="#" class="instagram"><i -->
			<!-- 										class="fa fa-instagram" aria-hidden="true"></i></a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->

			<!-- 					Single Featured Post -->
			<!-- 					<div class="single-featured-post"> -->
			<!-- 						Thumbnail -->
			<!-- 						<div class="post-thumbnail mb-50"> -->
			<!-- 							<img src="../vendor/mag/img/bg-img/22.jpg" alt=""> <a -->
			<!-- 								href="video-post.html" class="video-play"><i -->
			<!-- 								class="fa fa-play"></i></a> -->
			<!-- 						</div> -->

			<!-- 						Post Share Area -->
			<!-- 						<div -->
			<!-- 							class="post-share-area d-flex align-items-center justify-content-between"> -->
			<!-- 							Post Meta -->
			<!-- 							<div class="post-meta pl-3"> -->
			<!-- 								<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 									1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 									aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 									class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 							</div> -->
			<!-- 							Share Info -->
			<!-- 							<div class="share-info"> -->
			<!-- 								<a href="#" class="sharebtn"><i class="fa fa-share-alt" -->
			<!-- 									aria-hidden="true"></i></a> -->
			<!-- 								All Share Buttons -->
			<!-- 								<div class="all-share-btn d-flex"> -->
			<!-- 									<a href="#" class="facebook"><i class="fa fa-facebook" -->
			<!-- 										aria-hidden="true"></i></a> <a href="#" class="twitter"><i -->
			<!-- 										class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#" -->
			<!-- 										class="google-plus"><i class="fa fa-google-plus" -->
			<!-- 										aria-hidden="true"></i></a> <a href="#" class="instagram"><i -->
			<!-- 										class="fa fa-instagram" aria-hidden="true"></i></a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->
			<!-- 				</div> -->

			<!-- 				<div class="row"> -->
			<!-- 					Single Blog Post -->
			<!-- 					<div class="col-12 col-lg-6"> -->
			<!-- 						<div class="single-blog-post d-flex style-3 mb-30"> -->
			<!-- 							<div class="post-thumbnail"> -->
			<!-- 								<img src="../vendor/mag/img/bg-img/31.jpg" alt=""> -->
			<!-- 							</div> -->
			<!-- 							<div class="post-content"> -->
			<!-- 								<a href="single-post.html" class="post-title">From Wetlands -->
			<!-- 									To Canals And Dams Amsterdam Is Alive</a> -->
			<!-- 								<div class="post-meta d-flex"> -->
			<!-- 									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 										1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 										aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 										class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->

			<!-- 					Single Blog Post -->
			<!-- 					<div class="col-12 col-lg-6"> -->
			<!-- 						<div class="single-blog-post d-flex style-3 mb-30"> -->
			<!-- 							<div class="post-thumbnail"> -->
			<!-- 								<img src="../vendor/mag/img/bg-img/32.jpg" alt=""> -->
			<!-- 							</div> -->
			<!-- 							<div class="post-content"> -->
			<!-- 								<a href="single-post.html" class="post-title">From Wetlands -->
			<!-- 									To Canals And Dams Amsterdam Is Alive</a> -->
			<!-- 								<div class="post-meta d-flex"> -->
			<!-- 									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 										1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 										aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 										class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->

			<!-- 					Single Blog Post -->
			<!-- 					<div class="col-12 col-lg-6"> -->
			<!-- 						<div class="single-blog-post d-flex style-3 mb-30"> -->
			<!-- 							<div class="post-thumbnail"> -->
			<!-- 								<img src="../vendor/mag/img/bg-img/33.jpg" alt=""> -->
			<!-- 							</div> -->
			<!-- 							<div class="post-content"> -->
			<!-- 								<a href="single-post.html" class="post-title">From Wetlands -->
			<!-- 									To Canals And Dams Amsterdam Is Alive</a> -->
			<!-- 								<div class="post-meta d-flex"> -->
			<!-- 									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 										1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 										aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 										class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->

			<!-- 					Single Blog Post -->
			<!-- 					<div class="col-12 col-lg-6"> -->
			<!-- 						<div class="single-blog-post d-flex style-3 mb-30"> -->
			<!-- 							<div class="post-thumbnail"> -->
			<!-- 								<img src="../vendor/mag/img/bg-img/34.jpg" alt=""> -->
			<!-- 							</div> -->
			<!-- 							<div class="post-content"> -->
			<!-- 								<a href="single-post.html" class="post-title">From Wetlands -->
			<!-- 									To Canals And Dams Amsterdam Is Alive</a> -->
			<!-- 								<div class="post-meta d-flex"> -->
			<!-- 									<a href="#"><i class="fa fa-eye" aria-hidden="true"></i> -->
			<!-- 										1034</a> <a href="#"><i class="fa fa-thumbs-o-up" -->
			<!-- 										aria-hidden="true"></i> 834</a> <a href="#"><i -->
			<!-- 										class="fa fa-comments-o" aria-hidden="true"></i> 234</a> -->
			<!-- 								</div> -->
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->
			<!-- 				</div> -->

			<!-- 			</div> -->
		</div>

		<!-- >>>>>>>>>>>>>>>>>>>>
         Post Right Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->
		<div class="post-sidebar-area right-sidebar mt-30 mb-30 box-shadow">

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>貼文分類</h5>
				</div>

				<!-- Catagory Widget -->
				<ul class="catagory-widgets">
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> 景點</span> <span>35</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> 飲食</span> <span>30</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> 交通</span> <span>13</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> 住宿</span> <span>06</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> 購物</span> <span>28</span></a></li>
					<li><a href="#"><span><i
								class="fa fa-angle-double-right" aria-hidden="true"></i> 好康優惠</span> <span>08</span></a></li>

				</ul>
			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget">
				<a href="#" class="add-img"><img
					src="../vendor/images/share/kkdat.jpg" alt=""></a>
			</div>

			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget p-30">
				<!-- Section Title -->
				<div class="section-heading">
					<h5>合作夥伴</h5>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/14.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">小氣少年</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/15.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">台灣女孩</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/16.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">七先生與艾小姐</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/17.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">林氏璧</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/18.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">青青小熊</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a>
					</div>
				</div>

				<!-- Single YouTube Channel -->
				<div class="single-youtube-channel d-flex">
					<div class="youtube-channel-thumbnail">
						<img src="../vendor/mag/img/bg-img/14.jpg" alt="">
					</div>
					<div class="youtube-channel-content">
						<a href="single-post.html" class="channel-title">飛天璇</a> <a
							href="#" class="btn subscribe-btn"><i
							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a>
					</div>
				</div>

				<!-- 				Single YouTube Channel -->
				<!-- 				<div class="single-youtube-channel d-flex"> -->
				<!-- 					<div class="youtube-channel-thumbnail"> -->
				<!-- 						<img src="../vendor/mag/img/bg-img/15.jpg" alt=""> -->
				<!-- 					</div> -->
				<!-- 					<div class="youtube-channel-content"> -->
				<!-- 						<a href="single-post.html" class="channel-title">野蠻王妃</a> -->
				<!-- 						<a href="#" class="btn subscribe-btn"><i -->
				<!-- 							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a> -->
				<!-- 					</div> -->
				<!-- 				</div> -->

				<!-- 				Single YouTube Channel -->
				<!-- 				<div class="single-youtube-channel d-flex"> -->
				<!-- 					<div class="youtube-channel-thumbnail"> -->
				<!-- 						<img src="../vendor/mag/img/bg-img/16.jpg" alt=""> -->
				<!-- 					</div> -->
				<!-- 					<div class="youtube-channel-content"> -->
				<!-- 						<a href="single-post.html" class="channel-title">吉米</a> -->
				<!-- 						<a href="#" class="btn subscribe-btn"><i -->
				<!-- 							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a> -->
				<!-- 					</div> -->
				<!-- 				</div> -->

				<!-- 				Single YouTube Channel -->
				<!-- 				<div class="single-youtube-channel d-flex"> -->
				<!-- 					<div class="youtube-channel-thumbnail"> -->
				<!-- 						<img src="../vendor/mag/img/bg-img/17.jpg" alt=""> -->
				<!-- 					</div> -->
				<!-- 					<div class="youtube-channel-content"> -->
				<!-- 						<a href="single-post.html" class="channel-title">天使嘉</a> <a href="#" class="btn subscribe-btn"><i -->
				<!-- 							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a> -->
				<!-- 					</div> -->
				<!-- 				</div> -->

				<!-- 				Single YouTube Channel -->
				<!-- 				<div class="single-youtube-channel d-flex"> -->
				<!-- 					<div class="youtube-channel-thumbnail"> -->
				<!-- 						<img src="../vendor/mag/img/bg-img/18.jpg" alt=""> -->
				<!-- 					</div> -->
				<!-- 					<div class="youtube-channel-content"> -->
				<!-- 						<a href="single-post.html" class="channel-title">魔鬼甄</a> <a href="#" class="btn subscribe-btn"><i -->
				<!-- 							class="fa fa-play-circle-o" aria-hidden="true"></i> 訂閱</a> -->
				<!-- 					</div> -->
				<!-- 				</div> -->

			</div>
			<!-- Sidebar Widget -->
			<div class="single-sidebar-widget">
				<img src="../vendor/images/share/left_01.jpg" alt=""
					style="height: 400px;">
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