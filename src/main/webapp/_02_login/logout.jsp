<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>放心玩-登出</title>
<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/logout.css">
<!-- css_owl.carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.theme.default.css">
<!-- css_OverlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/OverlayScrollbars.css">
</head>
<body>
	<!-- 先將使用者名稱取出 -->
	<c:set var="memberName" value="${ LoginOK.email }" />
	<!-- 移除放在session物件內的屬性物件 -->
	<c:remove var="LoginOK" scope="session" />
	<c:remove var="OssanLoginOK" scope="session" />
	<c:remove var="AdminLoginOK" scope="session" />
	<c:remove var="ShoppingCart" scope="session" />
	<c:remove var="OssanSessionPKey" scope="session" />

	<!-- 下列敘述設定變數funcName的值為OUT，top.jsp 會用到此變數 -->
	<c:set var="funcName" value="OUT" scope="session" />
	<!-- 引入共同的頁首 -->
	<jsp:include page="/fragment/top.jsp" />
	<!-- 預留section高度防止置頂時被遮住 -->
	<div class="section_content section_logout">
		<!-- 下列六行敘述設定登出後要顯示的感謝訊息 -->
		<c:set var="logoutMessage" scope="request" />
		<div>親愛的${ memberName }：</div>
		<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您已經登出會員系統。</div>
		<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;感謝您使用Fun心玩系統，期待與您再次相見。</div>
		<jsp:useBean id='logoutBean' class='_02_login.model.LogoutBean'
			scope='page' />

		<c:set target='${logoutBean}' property='session'
			value='${pageContext.session}' />

		${ logoutBean.logout }

		<c:redirect url="/index.jsp" />
	</div>
	
	<!-- 	預留空間 -->
<!-- 	<div class="section_content" style="height: 350px;"></div> -->
	
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