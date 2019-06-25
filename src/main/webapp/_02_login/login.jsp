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
	href="${pageContext.request.contextPath}/vendor/css/login.css">
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

	<!-- 預留section高度防止置頂時被遮住 -->
	<section id="section-space"></section>

	<div class="section_content">
		<div class="section_content boardingPass_section">
			<div class="boardingPass_box">
				<ul class="boardingPass_left">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="boardingPass_right">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<div class="ticket">
					<span class="airplane"> <img
						src="../vendor/images/register/aeroplane-.svg" alt="">
					</span> <span class="boarding_topic">會員登入</span> <span
						class="boarding_topic_errorMessage"><c:if
							test="${ ! empty sessionScope.timeOut }">
							<!-- 表示使用逾時，重新登入 -->
							<span class="pure-form-message-inline">${sessionScope.timeOut}</span>
						</c:if></span> <span class="boarding1">Boarding pass</span> <span
						class="boarding2">Boarding pass</span>


					<div class="boardingPass_content">
						<!-- 登機牌-註冊填表 -->
						<form class="content_cell_left" id="login.do" method="post"
							name="loginForm" action="<c:url value='new_login.do' />">
							<fieldset>
								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="userId"">帳號(電子郵件)</label>
									</div>
									<div class=" register_filling_bottom">
										<input name="userId"
											value="${requestScope.user}${param.userId}" id="userId"
											type="text" placeholder="example@gmail.com"> <span
											class="pure-form-message-inline">${ErrorMsgKey.AccountEmptyError}</span>
									</div>
								</div>



								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="password" class="register_filling_top">密碼</label>
									</div>
									<div class=" register_filling_bottom">
										<input name="pswd"
											value="${requestScope.password}${param.pswd}" id="password"
											type="password" placeholder="Password" required> <span
											class="pure-form-message-inline">${ErrorMsgKey.PasswordEmptyError}</span>
									</div>
								</div>

								<div
									class="pure-control-group register_filling register_filling_rememberMe">
									<div class="register_filling_top remember_pwd_box">
										<input type="checkbox" name="rememberMe" id="rememberMe"
											<c:if
											test='${requestScope.rememberMe==true}'>
										checked='checked'
										</c:if>
											value="true"> <label for="rememberMe"
											class="pure-checkbox rememberMe_checkbox">記住帳號密碼</label> <span
											class="pure-form-message-inline error_message">${ErrorMsgKey.LoginError}</span>
									</div>
								</div>

								<div
									class="pure-controls  register_filling register_filling_submit">
									<button id="submit" type="submit" name="Submit"
										class="pure-button pure-button-primary">提交</button>
								</div>


							</fieldset>
						</form>


						<!-- 登機牌- error message -->
						<div class="content_cell content_cell_center">
							<div class="barcode">
								<img src="../vendor/images/register/barcode.svg" alt="">
							</div>
							<span class="pure-form-message-inline">
								${MsgMap.InsertNG}${MsgMap.errorSaveData}${MsgMap.passwordError}</span>
						</div>

						<!-- 登機牌-問候話語 -->
						<div class="content_cell content_cell_right">
							<div class="register_welcome">
								親愛的旅客您好：<br>
							</div>
							<div class="register_welcome">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;歡迎使用Fun心玩平台！<br>
							</div>
							<div class="register_welcome">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若您第一次使用本平台，請先<a
									class="register_toLogin"
									href="<c:url value='/_01_register/register.jsp' />"
									<c:if test="${!empty LoginOK}">
										onclick="return false;"
									</c:if>>註冊</a>成為會員才能開始體驗唷。<br>
							</div>
							<div class="register_welcome">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期待您有愉快的旅程～</div>
							<div class="register_welcome">Fun心玩 敬上</div>
							<!-- 							<div class="register_welcome_en">We wish you a pleasant -->
							<!-- 								journey!</div> -->
							<!-- 							<div class="register_welcome_en">FunHeart</div> -->
						</div>
					</div>
				</div>
				<div class="dashLine"></div>
			</div>
		</div>

	</div>


	<!-- 	預留空間 -->
	<div class="section_content" style="height: 350px;"></div>

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