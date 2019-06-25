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
	href="${pageContext.request.contextPath}/vendor/css/register.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/about.css">
<!-- css_owl.carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.theme.default.css">
<!-- css_OverlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/OverlayScrollbars.css">
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

	<!-- 	預留section高度防止置頂時被遮住 -->
	<section style="height: 90px;"></section>

	<!-- main -->
	<!-- 	<div class="main align-items-center"> -->
	<!-- 		<div class="col justify-content-center"> -->
	<!-- 			<!-- <div class="focus text-center p-3 wow bounceIn"> -->
	<!-- 			<h1 id="about_title" class="mb-4">關於Fun心玩</h1> -->
	<!-- 			<h2 class="about_text pb-2">每一天，我們都在幫助旅客擁有更好的旅遊體驗！</h2> -->
	<!-- 			<!-- </div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<!-- 	<div> -->
	<!-- 		<img src="../vendor/images/about/about_second_background.jpeg" -->
	<!-- 			style="width: 100%; height: 700px"> -->
	<!-- 	</div> -->
	<!-- 		iframe會多出space因為自帶body是黑色 -->
	<!-- 		<div class="embed-responsive embed-responsive-16by9"> -->
	<!-- 			<iframe class="embed-responsive-item" -->
	<!-- 				src="../vendor/images/about/funHeart_about.mp4" frameborder="0" -->
	<!-- 				marginwidth="0" marginheight="0" hspace="0" vspace="0" -->
	<!-- 				frameborder="0" scrolling="no"> </iframe> -->
	<!-- 		</div> -->
	<div class="text_box_about"
		style="background: url('../vendor/images/about/about_second_background.jpeg'); background-size: cover; height: 700px;">
		<div class="col justify-content-center">
			<div class="col focus text-center p-3 wow flipInY">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h1 id="about_title" class="mb-4" style="font-size: 8vmin;">關於Fun心玩</h1>
				<h2 id="about_text" class="pb-2" style="font-size: 6vmin;">每一天，我們都在幫助旅客擁有更好的旅遊體驗！</h2>
			</div>
		</div>
	</div>


	<!-- 四個card -->
	<div class="job pt-3 pb-4">
		<div class="jobs wow fadeIn">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-sm-6 col-xs-12 mt-5">
						<div class="card">
							<img class="card-img-top"
								src="../vendor/images/about/about_card_01.jpg"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">輕鬆拆帳</h5>
								<p class="card-text">
									簡單計算帳務狀況<br>不為分帳焦頭爛額
								</p>
								<a href="<c:url value='/_a1_activity/DisplayActivities.do' />"
									class="btn btn-primary">記帳&#8594;</a>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6 col-xs-12 mt-5">
						<div class="card">
							<img class="card-img-top"
								src="../vendor/images/about/about_card_02.jpeg"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">經驗交流</h5>
								<p class="card-text">
									評分留言交換資訊<br>依評價遊玩避免踩雷
								</p>
								<a href="#" class="btn btn-primary">分享&#8594;</a>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6 col-xs-12 mt-5">
						<div class="card">
							<img class="card-img-top"
								src="../vendor/images/about/about_card_03.jpeg"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">分享好物</h5>
								<p class="card-text">
									嚴選旅行常用商品<br>帶上它們讓旅遊更盡興
								</p>
								<a href="#" class="btn btn-primary">採購&#8594;</a>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6 col-xs-12 mt-5">
						<div class="card">
							<img class="card-img-top"
								src="../vendor/images/about/about_card_04.jpeg"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">趣味溫暖</h5>
								<p class="card-text">
									無利害關係純粹分享<br>拉近人與人之間的距離
								</p>
								<a href="<c:url value='/_a3_buddyList/DisplayFriends.do' />"
									class="btn btn-primary">好友列表&#8594;</a>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>

	</div>


	<!-- Fun心玩 -->
	<div class="main align-items-center mt-5"
		style="padding: 60px 0px 30px 0px; background: #F6B352;">
		<div class="col justify-content-center">
			<h2 class="about_text pb-2 pb-1">與我們合作</h2>
			<div
				style="width: 400px; border: 1px solid white; box-shadow: 1px 1px 5px #555; margin: 0px auto;"></div>
			<div class="container-fluid mt-5">
				<!-- 填表 -->
				<form class="content_cell_left">
					<fieldset style="width: 400px; margin: 0px auto;">
						<div class="pure-control-group register_filling">
							<div class="register_filling_top">
								<label for="name">姓名</label>
							</div>
							<div class="register_filling_bottom">
								<input name="email" value="" id="email" type="text">
							</div>
						</div>
						<div class="pure-control-group register_filling">
							<div class="register_filling_top">
								<label for="company">公司名稱</label>
							</div>
							<div class="register_filling_bottom">
								<input name="password2" value="" id="password2" type="password"
									required>
							</div>
						</div>

						<div class="pure-control-group register_filling">
							<div class="register_filling_top">
								<label for="phoneNumber">電話</label>
							</div>
							<div class="register_filling_bottom">
								<input name="password" value="" id="password" type="password"
									required>
							</div>
						</div>

						<div class="pure-control-group register_filling">
							<div class="register_filling_top">
								<label for="email">Email</label>
							</div>
							<div class="register_filling_bottom">
								<input name="email" value="" id="email" type="text">
							</div>
						</div>

						<div class="pure-control-group register_filling">
							<div class="register_filling_top">
								<label for="name">留言</label>
							</div>
							<div class="register_filling_bottom">
								<textarea cols="50" rows="5"></textarea>
							</div>
						</div>

						<div
							class="pure-controls register_filling register_filling_submit">
							<button id="submit" type="submit" name="Submit"
								class="pure-button pure-button-primary button_ReadMore">確認送出</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	<br>
	<!-- 協助機構 -->
	<div class="main align-items-center mt-5">
		<div class="col justify-content-center">
			<h2 class="about_text pb-2 pb-1">協助機構</h2>
			<div
				style="width: 400px; border: 1px solid white; box-shadow: 1px 1px 5px #555; margin: 0px auto;"></div>
			<div class="container-fluid mt-5">
				<div class="row">
					<div class="main-header-content m-auto text-center">
						<img src="../vendor/images/國立臺北科技大學 進修部推廣教育中心.png"
							style="width: 400px;" class="ml-2">
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>

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
</body>
</html>