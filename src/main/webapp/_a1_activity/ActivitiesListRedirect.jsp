<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${AppName}</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pure-min.css"
	type="text/css" />
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
	function setFocus(fld) {
		document.getElementById(fld).focus();
	}
</script>

</head>
<body onload="setFocus('title')">

	<!-- 引入共同的頁首 -->
	<jsp:include page="/fragment/top.jsp" />
	<!-- 預留section高度防止置頂時被遮住 -->
	<section id="section-space"></section>

	<div class="section_content_activityList" style="min-height: 400px;">
		<div class="activityList">
			<%-- 			<p class="welcome_text">Hi，${loginName}，您現在可以編輯活動清單唷:</p> --%>
			<p class="welcome_text">現在可以開始編輯活動清單了：</p>

			<!--新增活動 -->
			<form class="activityList_insert" id="form1" name="form1"
				method="post" action="ActivitiesInsert.do"
				enctype="multipart/form-data">
				<fieldset>
					<div class="activity_filling activity_filling_title">
						<div>新增活動</div>
					</div>
					<div class="activity_filling">
						<%-- 	            <input name="name" value="${requestScope.name}" id="name" type="text" placeholder="活動名稱 ">             --%>
						<div class="activity_filling_top">新活動名稱</div>
						<div class="activity_filling_bottom">
							<input name="name" id="name" type="text" placeholder="新活動名稱 ">
						</div>
					</div>
					<div class="activity_filling activity_filling_submit">
						<button type="submit" name="Submit" class="saveEdit">新增</button>${ErrMsg.errPicture}
						<span class="save_success_message">${ErrMsg.errName}</span>
					</div>
				</fieldset>
			</form>

			<p></p>
			<!--活動列表 -->
			<div>
				<%-- 	<p>Hi，${products_DPP.name}，以下是你的活動清單</p> --%>
				<table
					class="table table-light table-striped table-bordered table-hover">
					<thead>
						<tr class="activityList_title">
							<th scope="col">活動序號</th>
							<th scope="col">活動名稱</th>
							<th scope="col">活動成員</th>
							<th scope="col">消費清單</th>
							<th scope="col">刪除資料</th>

						</tr>
					</thead>

					<tbody>
						<c:forEach varStatus="stVar" var="activityBean"
							items="${sessionScope.ActivityBean}">
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

								<td>
									<form
										action="ActivitiesDelete.do?activityNo=${activityBean.activityNo}"
										method="post">
										<button type="submit" class="goToSublist"
											onClick="return confirm('確定要刪除：${activityBean.activityName}&nbsp;?\r此動作將無法復原！');">刪除</button>
									</form>
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- 回到好友列表）-->
		<div class="activityList_edit">
			<div class="activityList_edit_inner">
				<a class="activityList_edit_link"
					href="<c:url value='/_a1_activity/DisplayActivities.do' />"><img
					class="icon_setting" src="../vendor/images/settings.svg">
					<p class="activityList_edit_text">返回活動列表</p></a>
			</div>
			<!-- Message -->
			<div class="activityList_edit_inner">
				<span class="save_success_message">${sessionScope.FriendDeleteMsg}${successMsg.success}${ErrMsg.Exception}</span>
				<c:remove var="successMsg" scope='session' />
				<c:remove var="FriendDeleteMsg" scope="session" />
			</div>
		</div>
	</div>


	<c:remove var="ErrMsg" scope='session' />

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