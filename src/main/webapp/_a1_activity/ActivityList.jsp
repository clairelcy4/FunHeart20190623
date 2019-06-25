<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>放心玩-我的活動資訊</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pure-min.css"
	type="text/css" />
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
<script type="text/javascript">
	function confirmDelete() {
		if (confirm("確定刪除此項大叔資料(編號:${aOssanBean.ossanNo}  姓名:${aOssanBean.name})?")) {
			document.forms[0].action = "/_20_productMaintain/OssanDelete.do?pageNo=${param.pageNo}&pKey=${aOssanBean.ossanNo}&name=${aOssanBean.name}";
			document.forms[0].method = "POST";
			document.forms[0].submit();
		} else {
		}
	}
</script>

</head>

<body>

	<!-- 引入共同的頁首 -->
	<jsp:include page="/fragment/top.jsp" />
	<!-- 預留section高度防止置頂時被遮住 -->
	<section id="section-space"></section>

	<div class="section_content_activityList" style="min-height: 400px;">
		<div class="activityList">
<%-- 			<p class="welcome_text">Hi，${loginName}，以下是你的活動清單：</p> --%>
			<p class="welcome_text">以下是您的活動清單：</p>

			<table
				class="table table-light table-striped table-bordered table-hover">
				<thead>
					<tr class="activityList_title">
						<th scope="col">序號</th>
						<th scope="col">活動名稱</th>
						<th scope="col">參加成員</th>
						<th scope="col">消費明細</th>
						<th scope="col">結算分帳</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach varStatus="stVar" var="activityBean"
						items="${products_DPP.activityBean}">
						<tr>
							<td scope="row">${activityBean.activityNo}</td>
							<th>${activityBean.activityName}</th>
							<td>
								<button class="goToSublist"
									onclick="javascript:location.href=
	             	'DisplayMate.do?activityNo=${activityBean.activityNo}'">成員名單&#8594;</button>
							</td>
							<td>
								<button class="goToSublist"
									onclick="javascript:location.href=
	             	'DisplayExpense.do?activityNo=${activityBean.activityNo}'">消費清單&#8594;</button>
							</td>
							<!--合併PayBackList過來 -->
							<td>
								<button class="goToSublist"
									onclick="javascript:location.href=
	             	'../_a2_payBack/DisplayPayBackDetail.do?activityNo=${activityBean.activityNo}'">結算清單&#8594;</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 編輯好友列表（新增+刪除）-->
		<div class="activityList_edit">
			<a class="activityList_edit_link activityList_edit_text"
				href="<c:url value='/_a1_activity/ActivitiesPreInsert.do' />"> 
				<img class="icon_setting" src="../vendor/images/settings.svg">
				編輯活動</a>
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