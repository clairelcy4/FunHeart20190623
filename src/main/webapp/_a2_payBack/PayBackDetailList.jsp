<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>顯示活動資訊</title>
<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/activityList.css">
<!-- css_owl.carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/owl.theme.default.css">
<!-- css_OverlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/OverlayScrollbars.css">
<script type="text/javascript"></script>

</head>

<body>

	<!-- 引入共同的頁首 -->
	<jsp:include page="/fragment/top.jsp" />

	<!-- 預留section高度防止置頂時被遮住 -->
	<section id="section-space"></section>

	<div class="section_content_activityList">
		<div class="activityList">
			<p class="welcome_text">
				[&nbsp;活動${products_DPP.activityNo}&nbsp;]&nbsp;${products_DPP.activityName}
			<b class="welcome_text_bold">分帳結果</b></p>

			<table
				class="table table-light table-striped table-bordered table-hover">
<!-- 				<thead> -->
<!-- 					<tr class="activityList_title"> -->
<!-- 						<th scope="col">簡單的說</th> -->
<!-- 					</tr> -->
<!-- 				</thead> -->

				<tbody>

					<c:forEach varStatus="stVar" var="result" items="${textView}">
						<tr>
							<td scope="row">${result}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

			<p class="welcome_text" style="margin-top: 50px;">分帳計算表：</p>

			<table
				class="table table-light table-striped table-bordered table-hover">
				<thead>
					<tr class="activityList_title">
						<th scope="col">同伴姓名</th>
						<th scope="col">代墊款項</th>
						<th scope="col">最後結算</th>
					</tr>
				</thead>

				<tbody>

					<c:forEach varStatus="stVar" var="payBalance" items="${payBalance}">
						<tr>
							<td scope="row">${payBalance.payName}</td>
							<td>${payBalance.balanceBefore}</td>
							<td>${payBalance.balanceAfter}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


			<!-- 			<p class="welcome_text">請客的人們</p> -->

			<!-- 			<table -->
			<!-- 				class="table table-light table-striped table-bordered table-hover"> -->
			<!-- 				<thead> -->
			<!-- 					<tr class="activityList_title"> -->
			<!-- 						<th scope="col">同伴姓名</th> -->
			<!-- 						<th scope="col">貢獻費用</th> -->
			<!-- 						<th scope="col">內容</th> -->
			<!-- 					</tr> -->
			<!-- 				</thead> -->

			<!-- 				<tbody> -->

			<%-- 					<c:forEach varStatus="stVar" var="OnMe" items="${OnMe}"> --%>
			<!-- 						<tr> -->
			<%-- 							<td scope="row">${OnMe.payName}</td> --%>
			<%-- 							<td>${OnMe.payFirst}</td> --%>
			<%-- 							<td>${OnMe.expenseBean.expenseName}</td> --%>
			<!-- 						</tr> -->
			<%-- 					</c:forEach> --%>
			<!-- 				</tbody> -->
			<!-- 			</table> -->



		</div>
		<!-- 返回活動列表 & 編輯明細 -->
		<div class="activityList_edit">
			<a class="activityList_edit_link"
				href="<c:url value='/_a1_activity/DisplayActivities.do' />"><img
				class="icon_setting" src="../vendor/images/settings.svg">
				<p class="activityList_edit_text">返回活動列表</p></a>
		</div>
	</div>

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