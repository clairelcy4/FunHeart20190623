<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- git test -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>放心玩-加入會員</title>
<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/register.css">
<!-- css_owl.carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.theme.default.css">
<!-- css_OverlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/OverlayScrollbars.css">
<script type="text/javascript">
	function setFocusToUserId() {
		document.forms[0].memberId.focus(); // 將游標放在mid欄位內
	}
</script>
</head>

<body onload="setFocusToUserId()">

	<c:set var="funcName" value="REG" scope="session" />

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
					</span> <span class="boarding_topic">會員註冊</span> <span class="boarding1">Boarding
						pass</span> <span class="boarding2">Boarding pass</span>


					<div class="boardingPass_content">
						<!-- 登機牌-註冊填表 -->
						<form class="content_cell_left" id="register.do" method="post"
							action="<c:url value='register.do' />"
							enctype="multipart/form-data">
							<fieldset>

								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="email">電子郵件(作為帳號使用)</label>
									</div>
									<div class="register_filling_bottom">
										<input name="email" value="${param.email}" id="email"
											type="text"> <span class="pure-form-message-inline">${MsgMap.errorEmail}</span>
									</div>
								</div>
								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="password">密碼</label>
									</div>
									<div class="register_filling_bottom">
										<input name="password" value="${param.password}" id="password"
											type="password" required> <span
											class="pure-form-message-inline">${MsgMap.errorPasswordEmpty}</span>
									</div>
								</div>

								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="password">密碼確認</label>
									</div>
									<div class="register_filling_bottom">
										<input name="password2" value="${param.password2}"
											id="password2" type="password" required> <span
											class="pure-form-message-inline">${MsgMap.errorPassword2Empty}</span>
									</div>
								</div>

								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="name">姓名</label>
									</div>
									<div class="register_filling_bottom">
										<input name="name" value="${param.name}" id="name" type="text">
										<span class="pure-form-message-inline">${MsgMap.errorName}</span>
									</div>
								</div>

								<!--         <div class="pure-control-group"> -->
								<!--             <label for="nickname">暱稱</label> -->
								<%--             <input name ="nickname" value="${param.nickname}" id="nickname" type="text" placeholder="A.K.A"> --%>
								<%--             <span class="pure-form-message-inline">${MsgMap.errorNickname}</span> --%>
								<!--         </div> -->


								<!-- <!--         PARTIII -->
								<!-- 		<div class="pure-control-group"> -->
								<!--             <label for="uid">身分證字號</label> -->
								<%--             <input name ="uid" value="${param.uid}" id="uid" type="text" placeholder="A123456789"> --%>
								<%--             <span class="pure-form-message-inline">${MsgMap.errorUid}</span> --%>
								<!--         </div> -->

								<!--         <div class="pure-control-group"> -->
								<!--             <label for="city">地址</label> -->
								<%--             <input name ="city" value="${param.city}" id="city" type="text" placeholder="台北市"> --%>
								<%--             <span class="pure-form-message-inline">${MsgMap.errorCity}</span> --%>
								<!--         </div> -->

								<!--         <div class="pure-control-group"> -->
								<!--             <label for="district">行政區</label> -->
								<%--             <input name ="district" value="${param.district}" id="district" type="text" placeholder="信義區"> --%>
								<%--             <span class="pure-form-message-inline">${MsgMap.errorDistrict}</span> --%>
								<!--         </div> -->

								<!--         <div class="pure-control-group"> -->
								<!--             <label for="address">地址</label> -->
								<%--             <input name ="address" value="${param.address}" id="address" type="text" placeholder="Somewhere"> --%>
								<%--             <span class="pure-form-message-inline">${MsgMap.errorAddr}</span> --%>
								<!--         </div> -->

								<div class="pure-control-group register_filling">
									<div class="register_filling_top">
										<label for="tel">手機號碼</label>
									</div>
									<div class="register_filling_bottom">
										<input name="tel" value="${param.tel}" id="tel" type="text">
										<span class="pure-form-message-inline">${MsgMap.errorTel}</span>
									</div>
								</div>




								<!--         <div class="pure-control-group"> -->
								<!--         <label for="birthday">出生日期</label> -->
								<!--         <input type="date" id="start" name="birthday" -->
								<!--       			 min="1950-01-01" max="2000-12-31">   -->
								<!--         </div>   -->

								<!--         <div class="pure-control-group"> -->
								<!--         <label for="uploadFile">上傳照片</label> -->
								<!--         <input type="file" name="uploadFile" required>  -->
								<!-- 		</div> -->

								<div
									class="pure-controls register_filling register_filling_submit">
									<button id="submit" type="submit" name="Submit"
										class="pure-button pure-button-primary button_ReadMore">確認送出</button>
								</div>

								<!--         <div class="pure-controls"> -->
								<!--             <button id="cancel" type="reset" name="cancel" class="pure-button pure-button-primary">重填</button> -->
								<!--         </div> -->

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
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欲註冊本平台會員請填寫左側表單，若已是會員請直接<a
									class="register_toLogin"
									href="<c:url value='/_02_login/login.jsp' />"
									<c:if test="${!empty LoginOK}">
							     	onclick="return false;"
							     </c:if>>登入</a>。<br>
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