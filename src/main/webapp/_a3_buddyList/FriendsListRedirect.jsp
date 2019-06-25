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
<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/style.css">
<link rel="stylesheet" href="../vendor/css/friendList.css">
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

	<div class="section_content_friendList">
		<div class="friendList">
			<p class="welcome_text">Hi，${loginName}，您現在可以編輯好友列表唷。</p>
			<!--新增好友 -->
			<form class="friendList_insert" id="form1" name="form1" method="post"
				action="FriendsInsert.do" enctype="multipart/form-data">
				<fieldset>
					<div class="friend_filling friend_filling_title">
						<div>新增好友</div>
					</div>
					<div class="friend_filling">
						<%-- <input name="name" value="${requestScope.name}" id="name" type="text" placeholder="朋友姓名 ">             --%>
						<div class="friend_filling_top">新朋友姓名</div>
						<div class="friend_filling_bottom">
							<input name="name" id="name" type="text" placeholder="新朋友姓名">
						</div>
					</div>
					<div class="friend_filling">
						<%-- <input name ="tel" value="${requestScope.tel}" id="tel" type="text" placeholder="手機號碼"> --%>
						<div class="friend_filling_top">手機號碼</div>
						<div class="friend_filling_bottom">
							<input name="tel" id="tel" type="text" placeholder="手機號碼">
						</div>
					</div>

					<div class="friend_filling friend_filling_submit">
						<button type="submit" name="Submit" class="saveEdit">新增</button>${ErrMsg.errPicture}
						<span class="pure-form-message-inline">${ErrMsg.errName}</span> <span
							class="pure-form-message-inline">${ErrMsg.errTel}</span>
					</div>
				</fieldset>
			</form>

			<!--好友列表 -->
			<div>
				<table
					class="table table-light table-striped table-bordered table-hover">
					<thead>
						<tr class="friendList_title">
							<th scope="col">項目序號</th>
							<th scope="col">好友名稱</th>
							<th scope="col">好友電話</th>
							<th scope="col">刪除好友</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach varStatus="stVar" var="FriendBean"
							items="${sessionScope.FriendBean}">
							<tr>
								<td scope="row">${stVar.index+1}</td>
								<th>${FriendBean.friendName}</th>
								<td>${FriendBean.friendPhone}</td>
								<td>
									<form action="FriendsDelete.do?friendNo=${FriendBean.friendNo}"
										method="post">
										<button type="submit" class="goToSublist"
											onClick="return confirm('確定要刪除：${FriendBean.friendName}，電話：${FriendBean.friendPhone}&nbsp;?\r此動作將無法復原！');">刪除</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>





				</table>
			</div>
		</div>

		<!-- 編輯好友列表（新增+刪除）-->
		<div class="friendList_edit">
			<div class="activityList_edit_inner">
				<a class="friendList_edit_link"
					href="<c:url value='/_a3_buddyList/DisplayFriends.do' />"> <img
					class="icon_setting" src="../vendor/images/settings.svg">
					<p class="friendList_edit_text">返回好友列表</p>
				</a>
			</div>
			<!-- Message -->
			<div class="activityList_edit_inner">
				<span class="save_success_message">${sessionScope.FriendDeleteMsg}${successMsg.success}${ErrMsg.Exception}</span>
				<c:remove var="successMsg" scope='session' />
				<c:remove var="FriendDeleteMsg" scope="session" />
			</div>
		</div>
	</div>

	<!-- 引入共同的頁尾 -->
	<jsp:include page="/fragment/bottom.jsp" />

	<c:remove var="ErrMsg" scope='session' />

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